#!/bin/sh

(
    cd build/web || exit
    dart pub global run dhttpd --host 0.0.0.0 # '--headers=Cross-Origin-Embedder-Policy=credentialless;Cross-Origin-Opener-Policy=same-origin'
)
