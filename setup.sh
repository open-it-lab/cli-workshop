#!/bin/bash
mkdir folder{1,2,3}
mkdir -p folder1/inside/more-inside/most-inside/
mkdir -p folder1/inside/also-inside/very-inside/
touch folder1/file{1,2,3}
touch folder1/inside/more-inside/most-inside/deeply-buried-file
touch folder1/inside/also-inside/very-inside/also-deeply-buried-file
echo -e "very\nvery\nvery\nVery\nshort\nfile\nwith\nlots\nand\nlots\nand\nlots\nof\nlines" > more-lines
echo -e "not many\nlines\nhere" > few-lines
echo -e '#\!/bin/bash\nfor i in {1..10}; do echo $i ; sleep 0.25 ;  echo "error" >&2 ; done' > erroring-script.sh
chmod +x erroring-script.sh
mkdir globbing
touch globbing/a{1..5}.text globbing/a{20..22}.txt
touch globbing/b{5..10}.text globbing/b{17..26}.txt
touch globbing/c{3..7}.text globbing/c{25..27}.txt
touch globbing/d{6..12}.txt
touch globbing/a{10..15}.txt
touch globbing/a{1,3,5,7}.jpg
touch globbing/b{2,4,6,8}.jpg
