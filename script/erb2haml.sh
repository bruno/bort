#! /bin/bash
# erb2haml
# by Michelangelo Altamore

# Obtains a file list having an html.erb extension 
# under the current dir and convert each file 
# to haml format with html.haml extension. 
# It requires haml gem.

for erb_file in `find . -name *.html.erb`; do   
  if [ -f $erb_file ] ; then     
    name=${erb_file%\.html.erb};   
    html2haml ${erb_file} > ${name}.html.haml;   
  fi; 
done