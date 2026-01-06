#!/bin/bash

# Script d'initialisation Git pour le projet DevOps
# Nom: Louchiri, Prénom: Mohamed

echo "=== Initialisation du dépôt Git ==="

# Initialiser Git
git init

# Ajouter tous les fichiers
git add .

# Premier commit
git commit -m "Initial commit: Structure du projet DevOps"

# Créer et basculer sur la branche main
git branch -M main

echo "=== Configuration terminée ==="
echo ""
echo "Prochaines étapes :"
echo "1. Créez un dépôt sur GitHub nommé: Projet-DevOps-LouchiriMohamed"
echo "2. Exécutez: git remote add origin https://github.com/VOTRE_USERNAME/Projet-DevOps-LouchiriMohamed.git"
echo "3. Exécutez: git push -u origin main"
echo "4. Créez la branche dev: git checkout -b dev && git push -u origin dev"

