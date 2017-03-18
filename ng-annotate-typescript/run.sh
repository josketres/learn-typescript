#!/bin/sh
BASEPATH=$(dirname "${BASH_SOURCE[0]}")
yarn
rm -f $BASEPATH/foo*.js $BASEPATH/foo*.map 
$(yarn bin)/tsc --inlineSourceMap $BASEPATH/foo.ts
$(yarn bin)/ng-annotate --stats --sourcemap -a $BASEPATH/foo.js -o $BASEPATH/foo.annotated.js
