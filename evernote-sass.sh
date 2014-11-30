#! /bin/bash

evernote-sass () {
  git clone https://github.com/evernote/sass-build-structure.git

  for file in README.md evernote-sass.sh package.json; do
    rm -r -f evernote-sass/"$file"
  done

  mv evernote-sass/* .

  rm -r -f evernote-sass/
}

if [ $# -eq 0 ] ; then
  evernote-sass
else
fi