#!/bin/bash
for file in *.svg; do scour --quiet --disable-simplify-colors --disable-style-to-xml --enable-id-stripping --remove-metadata --renderer-workaround --strip-xml-prolog --set-precision=8 --strip-xml-space -i $file -o $file.new; done
rm *.svg
rename .svg.new .svg *.new
