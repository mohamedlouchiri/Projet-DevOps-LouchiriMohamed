@echo off
REM Script d'initialisation Git pour le projet DevOps (Windows)
REM Nom: Louchiri, Prénom: Mohamed

echo === Initialisation du depot Git ===

REM Initialiser Git
git init

REM Ajouter tous les fichiers
git add .

REM Premier commit
git commit -m "Initial commit: Structure du projet DevOps"

REM Creer et basculer sur la branche main
git branch -M main

echo.
echo === Configuration terminee ===
echo.
echo Prochaines etapes :
echo 1. Creez un depot sur GitHub nomme: Projet-DevOps-LouchiriMohamed
echo 2. Executez: git remote add origin https://github.com/VOTRE_USERNAME/Projet-DevOps-LouchiriMohamed.git
echo 3. Executez: git push -u origin main
echo 4. Creez la branche dev: git checkout -b dev ^&^& git push -u origin dev

pause

