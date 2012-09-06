#!/bin/bash

./setup.sh
prev_pwd=`pwd`

# getting started/tour

# behold the power of <tab>
cal
date
# mplayer

# navigating

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
# number of lines, words, & bytes
wc more-lines
wc few-lines
# just lines (-c is just bytes)
wc -l more-lines
sort more-lines
uniq more-lines
# ignore case
uniq -i more-lines
head -1 more-lines
head -2 more-lines
head -5 more-lines
tail -1 more-lines
tail -5 more-lines
grep very more-lines
# -v does the opposite
grep -v very more-lines
grep lines more-lines
grep lines more-lines few-lines
# -n tells you the line number
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
./erroring-script.sh >& file-output

# globbing

# see http://www.linuxjournal.com/content/bash-extended-globbing
# for more fun

cd globbing
ls
echo *.txt
echo *.jpg
ls *.txt
ls *.jpg
ls -l *.txt
ls -l *.jpg
ls a*
ls b*
ls *1*
ls a1*.txt
ls a1?.txt
ls a??.txt
ls b?.txt
ls {a,b}*.txt
ls {a,b}?.txt
ls {a,b}??.txt
ls a{1..3}.txt
ls {a,b}{1..15}.txt
ls {a,b}{1..15}.txt 2>/dev/null
ls [a-c]*.txt
ls [^d]*.txt
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
echo ${f%.txt}
echo ${f%.*}
echo ${f#erroring-}
echo ${f#*-}

# remote access
# ssh, scp
wget https://raw.github.com/open-it-lab/cli-workshop/master/cli-workshop.sh

# shell scripts

for thing in item1 item2 item3 ; do echo $thing ; done
for i in {1..5} ; do echo $i ; done
cd globbing
for i in {1..5} ; do echo mv a$i.txt a${i}.jpg ; done
for i in *.txt ; do echo mv $i ${i%.txt}.jpg ; done

echo -e '#!/bin/bash\nfor i in *.txt ; do mv $i ${i%.txt}.jpg ; done' > convert-text-to-img.sh
chmod +x convert-text-to-img.sh

# links
# http://www.ee.surrey.ac.uk/Teaching/Unix/
# http://linuxcommand.org/learning_the_shell.php
# http://www.pixelbeat.org/cmdline.html
# http://www.commandlinefu.com

# manuals/reference
# http://www.digilife.be/quickreferences/QRC/The%20One%20Page%20Linux%20Manual.pdf
# http://www.rain.org/~mkummel/unix.html

# wearable manuals/reference
# http://store.xkcd.com/xkcd/#LinuxCheatShirt

# advanced links
# http://freeengineer.org/learnUNIXin10minutes.html
# http://www.cs.usfca.edu/~parrt/course/601/lectures/unix.util.html
# http://cb.vu/unixtoolbox.xhtml
