#!/bin/bash
# Convert PNG Icons to Embedded HTML Image const char prgm mem variables
for file in `ls -1 *.png`
do
  filename_in="${file%.*}"
  filename=`echo "${filename_in}" | tr - _`
  uuencode --base64 ${file} ${file} > ${file}.uu
  perl -pi -e "s/begin-base64 644 ${file}/<img src=\"data:image\/png;base64,/" ${file}.uu
  perl -pi -e "s/^====$/\" alt=\"${file}\">/" ${file}.uu
  perl -pi -e "s/\n//" ${file}.uu
  perl -pi -e "s/^/const char ui_${filename}[] PROGMEM = {\'/" ${file}.uu
  perl -pi -e "s/$/'};\n/" ${file}.uu
done
cat *.uu > icons-set.uu.txt
rm -f *.uu
