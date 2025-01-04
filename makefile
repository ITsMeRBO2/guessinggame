# Makefile pour générer le fichier README.md

all: README.md

README.md: guessinggame.sh
	@echo "# Projet de devinette de fichiers" > README.md
	@echo "Date et heure d'exécution : $(shell date)" >> README.md
	@echo "Nombre de lignes de code dans guessinggame.sh : $(shell wc -l < guessinggame.sh)" >> README.md
	@echo "Le jeu demande à l'utilisateur de deviner le nombre de fichiers dans le répertoire actuel." >> README.md
	@echo "Le jeu s'arrête lorsque l'utilisateur donne la bonne réponse." >> README.md
