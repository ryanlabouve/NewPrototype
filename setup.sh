#!/bin/sh
echo "Download h5bp..."
git clone https://github.com/h5bp/html5-boilerplate.git tmp/
echo "Remove everything we don't want..."
rm -rf tmp/*.md tmp/*.txt tmp/*.png tmp/.gitignore tmp/.gitattributes tmp/.htaccess tmp/crossdomain.xml tmp/doc tmp/404.html

echo "Rearrange some things"
mv tmp/index.html views/layout.erb

echo "Move the rest of everything"
mv tmp/* .

echo "Delete tmp folder"
rm -rf tmp/

exit 0
