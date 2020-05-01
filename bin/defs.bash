#!/bin/bash


. bin/buildrc

function clean {
    rm -rf lib/ browser/
    mkdir -p lib/ browser/
}

function build {
    clean
    coffee -o lib/ src/coffee/package_file.coffee
    coffee -o lib/ src/coffee/json_file.coffee
    coffee -o lib/ src/coffee/deep.coffee
    coffee -o index.js src/index.coffee
    cp lib/deep.js browser/
}

function run {
    ${1}
}


run ${1}
