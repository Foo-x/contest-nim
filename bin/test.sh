#!/bin/bash

if (( $# != 3 )); then
    echo "need 3 arguments." 1>&2
    echo "test.sh site title problem" 1>&2
    exit 1
fi

site=$1
title=$2
problem=$3

root=$(git rev-parse --show-toplevel)
cd ${root}/src/${site}/${title}/

nim cpp -r --outdir:$(mktemp -d) -d:release --hints:off --verbosity:0 ${title}_${problem}.nim < inputs/${title}_${problem}.txt
