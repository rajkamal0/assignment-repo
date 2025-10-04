TITLE := Guessing Game
DATE := $(shell date)
LINES := $(shell wc -l < guessinggame.sh)
README.md: FORCE
	echo "# $(TITLE)" > README.md
	echo "**"make" on:** $(DATE)" >> README.md
	echo "" >> README.md
	echo "**Total lines of code:** $(LINES)" >> README.md
FORCE:
