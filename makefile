all: README.md

README.md: guessinggame.sh
	touch README.md
	echo "Bash program for guessing the number of files in a directory" > README.md
	date >> README.md
	(wc -l < guessinggame.sh) >> README.md

