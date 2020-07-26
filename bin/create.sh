#!/bin/bash

if (( $# < 3 )); then
    echo "need more than 3 arguments." 1>&2
    echo "create.sh site title problem1 problem2 ..." 1>&2
    exit 1
fi

site=$1
title=$2
problems=${@:3}

root=$(git rev-parse --show-toplevel)
cd ${root}/src/

mkdir -p ${site}
cd ${site}

mkdir -p ${title}
cd ${title}

mkdir -p inputs

for a in ${problems}; do
    touch ${title}_${a}.nim
    touch inputs/${title}_${a}.txt
done
