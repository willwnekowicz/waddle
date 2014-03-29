#!/bin/sh

mv css/*  ../../assets/stylesheets/
mv js/* ../../assets/javascripts/
mv images/* ../../assets/images/
mv fonts/* ../../assets/fonts/
mv index.html index.html.erb

rmdir css js images fonts

echo "Remember to edit the images in the HTML files!"
echo "and change the CRLFs to LFs everywhere"
