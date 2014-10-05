#! /bin/bash

git clone https://github.com/evernote/sass-build-structure.git

cd sass

rm -r -f README.md

cd ../

mv sass/* .

rm -r -f sass/



echo ''
echo "The Evernote Sass build has been successfully created"
echo ''
