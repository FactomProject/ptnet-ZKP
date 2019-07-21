#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )" # get dir containing this script
cd $DIR # always from from script dir

rm proof.json 2>/dev/null
rm public.json 2>/dev/null
rm witness.json 2>/dev/null
rm circuit.json 2>/dev/null

echo "build VASS()" && \
circom circuit.circom -o circuit.json && \
echo "info" && \
snarkjs info -c circuit.json && \
echo "setup" && \
snarkjs setup && \
echo "witness" && \
snarkjs calculatewitness && \
echo "proof" && \
snarkjs proof && \
echo "verify" && \
snarkjs verify
