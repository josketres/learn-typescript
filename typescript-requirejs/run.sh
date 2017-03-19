#!/bin/sh
BASEPATH=$(dirname "${BASH_SOURCE[0]}")
yarn
rm -f $BASEPATH/*.js.map 
rm -f $BASEPATH/foo*.js $BASEPATH/bar*.js $BASEPATH/main*.js 
$(yarn bin)/tsc -m "AMD" --sourceMap $BASEPATH/*.ts
cd $BASEPATH
../node_modules/.bin/r.js -o build.js optimize=none
# manually remove sourcesContent (r.js sucks)
cat main-built.js.map | jq 'del(.sourcesContent)' | ex -sc "wq!main-built.js.map" /dev/stdin
../node_modules/.bin/sorcery -i main-built.js
cd -
