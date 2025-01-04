#!/bin/bash

function get_file_count {
  echo $(ls -1 | wc -l)
}

file_count=$(get_file_count)

echo "Bienvenue dans le jeu de devinettes !"
echo "Combien de fichiers se trouvent dans le répertoire actuel ?"

while true; do
  read -p "Entrez votre estimation : " user_guess

  if [[ ! $user_guess =~ ^[0-9]+$ ]]; then
    echo "Veuillez entrer un nombre entier valide."
    continue
  fi

  if (( user_guess < file_count )); then
    echo "Trop bas ! Essayez à nouveau."
  elif (( user_guess > file_count )); then
    echo "Trop haut ! Essayez à nouveau."
  else
    echo "Félicitations ! Vous avez deviné correctement."
    break
  fi
done
