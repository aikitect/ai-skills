git clone --no-checkout https://github.com/harehare/mq repo
cd repo
git sparse-checkout set "skills/processing-markdown"
git checkout
cp -R skills/processing-markdown/* ../
cd ..
rm -rf repo
