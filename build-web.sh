#!/bin/sh

flutter clean
flutter build web --web-renderer canvaskit --no-web-resources-cdn --release
tar -cvJf docs-web.tar.xz build/web/**
