# override how xdv → pdf is done
$xdvipdfmx = 'xdvipdfmx -o %D %S; (test -f "%D") && cp -f "%D" "docs/Sandeep.pdf"';
