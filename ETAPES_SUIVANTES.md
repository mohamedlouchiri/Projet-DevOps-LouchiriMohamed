# Étapes à Suivre Maintenant - Guide Rapide

## ✅ ÉTAPE 1 : Initialiser Git (Maintenant)

Ouvrez PowerShell ou Git Bash dans le dossier `C:\Users\mlouc\devops` et exécutez :

```bash
# Initialiser Git
git init

# Ajouter tous les fichiers
git add .

# Premier commit
git commit -m "Initial commit: Structure du projet DevOps"

# Créer et basculer sur la branche main
git branch -M main
```

**OU** utilisez simplement le script :
```bash
.\setup-git.bat
```

---

## ✅ ÉTAPE 2 : Créer le dépôt sur GitHub

1. Allez sur **https://github.com** et connectez-vous
2. Cliquez sur le **"+"** en haut à droite → **"New repository"**
3. Nom du dépôt : **`Projet-DevOps-LouchiriMohamed`**
4. **IMPORTANT** : 
   - ❌ Ne cochez PAS "Add a README file"
   - ❌ Ne cochez PAS "Add .gitignore"
   - ❌ Ne cochez PAS "Choose a license"
5. Cliquez sur **"Create repository"**

---

## ✅ ÉTAPE 3 : Lier votre dépôt local à GitHub

Après avoir créé le dépôt GitHub, GitHub vous montrera une page avec des instructions.
Copiez l'URL de votre dépôt (elle ressemble à : `https://github.com/VOTRE_USERNAME/Projet-DevOps-LouchiriMohamed.git`)

Puis dans PowerShell, exécutez (remplacez VOTRE_USERNAME par votre nom d'utilisateur GitHub) :

```bash
# Ajouter le remote GitHub
git remote add origin https://github.com/VOTRE_USERNAME/Projet-DevOps-LouchiriMohamed.git

# Pousser vers GitHub
git push -u origin main
```

Si GitHub vous demande vos identifiants, utilisez un **Personal Access Token** (pas votre mot de passe).

---

## ✅ ÉTAPE 4 : Créer la branche dev

```bash
# Créer la branche dev à partir de main
git checkout -b dev

# Pousser la branche dev vers GitHub
git push -u origin dev
```

---

## ✅ ÉTAPE 5 : Faire des modifications sur dev

Faites quelques modifications pour tester. Par exemple, modifiez `src/main/java/com/devops/App.java` :

```bash
# Faire une modification (vous pouvez éditer App.java)
# Puis :
git add .
git commit -m "Modification sur la branche dev - test"
git push origin dev
```

Répétez cette étape 2-3 fois pour avoir plusieurs commits sur dev.

---

## ✅ ÉTAPE 6 : Vérifier GitHub Actions

1. Allez sur votre dépôt GitHub
2. Cliquez sur l'onglet **"Actions"**
3. Vous devriez voir le workflow GitHub Actions s'exécuter automatiquement après chaque push
4. Attendez qu'il se termine avec succès (coche verte ✅)

---

## ✅ ÉTAPE 7 : Créer une Pull Request

1. Sur GitHub, cliquez sur **"Pull requests"**
2. Cliquez sur **"New pull request"**
3. Base : **`main`** ← Compare : **`dev`**
4. Cliquez sur **"Create pull request"**
5. Ajoutez un titre et une description
6. Cliquez sur **"Create pull request"**

Le workflow GitHub Actions se déclenchera automatiquement sur la PR.

---

## ✅ ÉTAPE 8 : Configurer Jenkins (Plus tard)

Quand vous serez prêt pour Jenkins :

1. Installez les plugins Jenkins nécessaires
2. Configurez les credentials (GitHub, Slack)
3. Créez le projet `PipeLine-LouchiriMohamed`
4. Configurez-le pour utiliser le `Jenkinsfile`
5. Lancez le pipeline

**Voir `INSTRUCTIONS.md` pour les détails complets de Jenkins.**

---

## 📸 N'oubliez pas !

Pendant que vous faites ces étapes, prenez des captures d'écran pour votre rapport :
- ✅ Structure du projet sur GitHub
- ✅ Historique des commits
- ✅ Workflow GitHub Actions en cours d'exécution
- ✅ Pull Request créée

Consultez `GUIDE_RAPPORT.md` pour la liste complète des captures nécessaires.

---

## 🆘 Besoin d'aide ?

- **Erreur Git ?** Vérifiez que Git est installé : `git --version`
- **Erreur de push ?** Vérifiez votre URL GitHub et vos credentials
- **GitHub Actions ne se lance pas ?** Vérifiez que le fichier `.github/workflows/ci.yml` est bien présent

