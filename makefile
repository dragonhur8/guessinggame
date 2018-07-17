all: README.md

README.md: guessinggame.sh
	touch README.md
	echo "Bash program for guessing the number of files in a directory\n" > README.md
	date >> README.md
	echo '\n' >> README.md
	(wc -l < guessinggame.sh) >> README.md

