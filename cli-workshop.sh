#!/bin/bash

./setup.sh
prev_pwd=`pwd`

# navigating

# behold the power of <tab>

pwd
ls
tree
tree -d
cd folder1
cd ../
cd ./
cd folder1/inside/more-inside/most-inside
pwd
ls
cd ../../../../
cd $prev_pwd/folder1/
cd /
ls
cd
cd ~
cd $prev_pwd
cd folder1/inside
ls
cd more-inside/most-inside
cd ../../also-inside/very-inside
cd ../../../../

# manipulating files
mkdir new-folder
mkdir another-new-folder
rmdir another-new-folder
cd new-folder/
touch new-file
mv new-file old-file
mv old-file ../
mv ../old-file ./
ls
rm old-file
touch new-file
cp new-file old-file
ls
nano new-file
nano old-file
cat new-file
cat old-file

echo

cd ../

# command options
ls -l
ls -r
ls -I folder1

# man pages
man ls
man man

# job control

# (doesn't work in script)

# sleep 20
# # ctrl+z
# jobs
# bg
# jobs
# fg
# jobs
# # ctrl+c

# plain text files and utilities
nano new-file
cat new-file
cat more-lines
cat few-lines
cat more-lines few-lines
wc more-lines
wc few-lines
wc -l more-lines
sort more-lines
uniq more-lines
uniq -i more-lines
head -1 more-lines
head -2 more-lines
head -5 more-lines
tail -1 more-lines
tail -5 more-lines
grep very more-lines
grep -v very more-lines
grep lines more-lines
grep lines more-lines few-lines
grep -n lines more-lines few-lines
grep -i -v very more-lines

# piping
sort -i more-lines | uniq
sort -i more-lines | uniq -i
cat few-lines more-lines | sort | uniq

cat few-lines more-lines | sort | uniq > sorted-file
cat sorted-file
cat few-lines more-lines | sort | uniq > /dev/null
tty
echo "This is an echoed message" > `tty`

./erroring-script.sh
./erroring-script.sh | grep -v error
./erroring-script.sh 2> /dev/null
./erroring-script.sh 1> file-output
./erroring-script.sh 2> /dev/null 1> file-output

# globbing

# see http://www.linuxjournal.com/content/bash-extended-globbing
# for more fun

cd globbing
ls
echo *.text
echo *.image
ls *.text
ls *.image
ls -l *.text
ls -l *.image
ls a*
ls b*
ls *1*
ls a1*.text
ls a1?.text
ls a??.text
ls b?.text
ls {a,b}*.text
ls {a,b}?.text
ls {a,b}??.text
ls a{1..3}.text
ls {a,b}{1..15}.text
ls {a,b}{1..15}.text 2>/dev/null
ls [a-c]*.text
ls [^d]*.text
echo ~

cd ../

# environment variables
var="short phrase"
echo $variable
newvar=ls
$newvar
echo $newvar
f=erroring-script.sh
./$f
cat $f
v=file
echo $vname
echo ${v}name
echo $f
echo ${f:9}
echo ${f:9:5}
echo ${f%.sh}
echo ${f%.text}
echo ${f%.*}
echo ${f#erroring-}
echo ${f#*-}

# remote access
# ssh, scp

# shell scripts

for thing in item1 item2 item3 ; do echo $thing ; done
for i in {1..5} ; do echo $i ; done
cd globbing
for i in {1..5} ; do echo mv a$i.text a${i}.image ; done
for i in *.text ; do echo mv $i ${i%.text}.image ; done

echo -e '#!/bin/bash\nfor i in *.text ; do mv $i ${i%.text}.image ; done' > convert-text-to-img.sh
chmod +x convert-text-to-img.sh
