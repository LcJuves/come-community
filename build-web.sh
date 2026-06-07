#!/bin/sh
# https://docs.flutter.dev/deployment/cd#fastlane

flutter clean
flutter build web --wasm --csp \
	--no-native-null-assertions \
	--no-web-resources-cdn -O4 \
	--no-source-maps --release
dart run third-party/protobuf/main.dart

minify_js() {
	bun build "$1" --minify --target browser --outfile "$1"
	bunx javascript-obfuscator "$1" --identifier-names-generator mangled \
		--unicode-escape-sequence true --numbers-to-expressions true \
		--disable-console-output true --parse-html true \
		--self-defending true --simplify true --vm-bytecode-encoding true \
		--vm-bytecode-array-encoding true --vm-bytecode-format binary \
		--debug-protection true -o "$1"
	# bunx swc "$1" -o "$1.out"
}

esbuild_minify_js() {
	bunx esbuild --minify --loader=js --target=esnext \
		--tree-shaking=true <"$1" >"$1.out"
	mv "$1.out" "$1"
}

minify_html() {
	bunx html-minifier --remove-comments --minify-js bun \
		--minify-css bun --minify-urls relateurl \
		--remove-optional-tags --remove-redundant-attributes \
		--remove-tag-whitespace --collapse-whitespace \
		--remove-script-type-attributes \
		--remove-style-link-type-attributes \
		--remove-attribute-quotes --remove-empty-attributes \
		--remove-empty-elements --use-short-doctype \
		--sort-attributes --sort-class-name \
		"$1" -o "$1"
}

minify_json() {
	bun repl -e "(async()=>await Bun.write(Bun.stdout,JSON.stringify(require('./$1'))))()" >"$1.out"
	mv "$1.out" "$1"
}

(
	cd build/web/canvaskit || exit
	minify_js canvaskit.js
	minify_js skwasm_heavy.js
	minify_js skwasm.js
	minify_js wimp.js

	cd chromium || exit
	minify_js canvaskit.js

	cd ../experimental_webparagraph || exit
	minify_js canvaskit.js

	cd ../.. || exit
	minify_js flutter_bootstrap.js
	minify_js flutter_service_worker.js
	minify_js flutter.js
	minify_html index.html
	minify_js main.dart.js
	esbuild_minify_js main.dart.js
	minify_js main.dart.mjs
	minify_json manifest.json
)

tar -cvJf web-artifacts.tar.xz build/web/**
