README.md: guessinggame.sh
	echo "# Projet : Guessing Game" > README.md
	echo "\n## Date et heure de génération" >> README.md
	date >> README.md
	echo "\n## Nombre de lignes de code dans guessinggame.sh" >> README.md
	wc -l < guessinggame.sh | xargs echo >> README.md

clean:
	rm -f README.md
