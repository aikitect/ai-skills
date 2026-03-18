#!/bin/bash

SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &> /dev/null && pwd)
ROOT_DIR=$(cd -- "$SCRIPT_DIR/../../" &> /dev/null && pwd)
cd "$ROOT_DIR" || exit 1

echo "Répertoire de travail actuel : $(pwd)"
echo "Contenu de la racine :"
ls -F

cd skills/mq
git clone --no-checkout https://github.com/harehare/mq repo
cd repo
git sparse-checkout set "skills/processing-markdown"
git checkout
cp -R skills/processing-markdown/* ../
cd ..
rm -rf repo
