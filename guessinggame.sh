#!/usr/bin/env bash
# File: guessinggame.sh

# Fonction pour compter le nombre de fichiers dans le répertoire actuel
count_files() {
  echo $(ls -l | grep -v ^d | wc -l)
}

# Demander à l'utilisateur combien de fichiers sont dans le répertoire actuel
echo "Bienvenue dans le jeu de devinette de fichiers !"
echo "Combien de fichiers y a-t-il dans le répertoire actuel ?"
read user_guess

# Obtenez le nombre réel de fichiers
correct_count=$(count_files)

# Boucle jusqu'à ce que l'utilisateur donne la bonne réponse
while [[ $user_guess -ne $correct_count ]]; do
  if [[ $user_guess -lt $correct_count ]]; then
    echo "Trop bas. Essayez encore."
  else
    echo "Trop haut. Essayez encore."
  fi
  read user_guess
done

# Félicitations lorsque la réponse est correcte
echo "Félicitations ! Vous avez deviné correctement. Il y a bien $correct_count fichiers dans le répertoire."
