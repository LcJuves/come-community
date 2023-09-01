#!/bin/sh

flutter clean
flutter build web --web-renderer canvaskit --no-tree-shake-icons --no-web-resources-cdn --release
(
    cd build/web || exit
    esbuild --minify --loader=js <flutter_service_worker.js >flutter_service_worker.out.js
    mv flutter_service_worker.out.js flutter_service_worker.js
    esbuild --minify --loader=js <flutter.js >flutter.out.js
    mv flutter.out.js flutter.js
    esbuild --minify --loader=js <main.dart.js >main.dart.out.js
    mv main.dart.out.js main.dart.js

    cd canvaskit || exit
    esbuild --minify --loader=js <canvaskit.js >canvaskit.out.js
    mv canvaskit.out.js canvaskit.js
    esbuild --minify --loader=js <skwasm.js >skwasm.out.js
    mv skwasm.out.js skwasm.js
    esbuild --minify --loader=js <skwasm.worker.js >skwasm.worker.out.js
    mv skwasm.worker.out.js skwasm.worker.js

    cd chromium || exit
    esbuild --minify --loader=js <canvaskit.js >canvaskit.out.js
    mv canvaskit.out.js canvaskit.js
)
tar -cvJf docs-web.tar.xz build/web/**
