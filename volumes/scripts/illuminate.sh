#!/bin/bash
set -euo pipefail

INPUT_FILE=`readlink -f $1`

pushd /opt/illuminate > /dev/null
./node_modules/@babel/cli/bin/babel.js --plugins "./illuminatejs/babel-plugin-deobfuscate/lib/illuminatejs.js" ${INPUT_FILE}
popd > /dev/null
