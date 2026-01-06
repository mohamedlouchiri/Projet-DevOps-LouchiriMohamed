# Guide pour la Préparation du Rapport

Ce document liste toutes les captures d'écran nécessaires pour votre rapport d'évaluation.

## 1. Captures GitHub

### Structure du projet
- Capture de l'arborescence des fichiers sur GitHub
- Montrer : `src/`, `pom.xml`, `Jenkinsfile`, `Dockerfile`, `.github/workflows/`, etc.

### Historique des commits
- Page "Commits" de GitHub
- Montrer au moins 3-4 commits avec leurs messages
- Inclure les commits sur `main` et `dev`

### Pull Request
- Page de la Pull Request `dev` → `main`
- Montrer :
  - Description de la PR
  - Fichiers modifiés
  - Statut (merged/open)
  - Commentaires si présents

### Workflow GitHub Actions
- Onglet "Actions" de GitHub
- Captures à inclure :
  - Liste des workflows exécutés
  - Détails d'une exécution réussie (étapes : Checkout, Set up JDK, Run tests, Build)
  - Logs d'une étape (ex: "Run tests" ou "Build with Maven")

## 2. Captures des Scripts

### Jenkinsfile
- Capture complète du fichier `Jenkinsfile`
- Assurez-vous que toutes les phases sont visibles :
  - Checkout
  - Build
  - Archive
  - Deploy
  - Notify Slack

### Workflow GitHub Actions
- Capture du fichier `.github/workflows/ci.yml`
- Montrer la configuration complète

### Dockerfile
- Capture du `Dockerfile` montrant le multi-stage build

### docker-compose.yml
- Capture du fichier `docker-compose.yml`

## 3. Captures Jenkins

### Vue d'ensemble du pipeline
- Page principale du projet `PipeLine-LouchiriMohamed`
- Montrer :
  - Statut du dernier build
  - Historique des builds
  - Temps d'exécution

### Console de sortie
- Console d'un build réussi
- Captures à inclure :
  - **Étape Checkout** : Affichage du commit récupéré
  - **Étape Build** : Sortie Maven (compilation, tests)
  - **Étape Archive** : Confirmation de l'archivage
  - **Étape Deploy** : Messages de déploiement
  - **Étape Notify Slack** : Confirmation de l'envoi

### Vue personnalisée
- Capture de la vue "Mes Pipelines" ou vue personnalisée
- Montrer que seuls les projets avec le suffixe "PipeLine" sont affichés
- Si possible, montrer plusieurs projets pour démontrer le filtrage

### Configuration du projet
- Page de configuration du projet Jenkins
- Montrer :
  - Configuration SCM (GitHub)
  - Déclencheurs (GitHub hook)
  - Script Path (Jenkinsfile)

## 4. Captures Slack

### Notifications du pipeline
- Capture du canal Slack `#devops-notifications` (ou votre canal)
- Captures à inclure :
  - **Notification de succès** : Message vert avec ✅
  - **Notification d'échec** (si testé) : Message rouge avec ❌
  - Détails de la notification (Build #, Commit, Auteur)

### Format des messages
- Montrer que les messages incluent :
  - Nom du projet
  - Numéro de build
  - Statut (SUCCESS/FAILURE)
  - Informations sur le commit

## Conseils pour les captures

1. **Clarté** : Assurez-vous que le texte est lisible
2. **Organisation** : Numérotez vos captures (ex: "Figure 1: Structure GitHub")
3. **Commentaires** : Ajoutez des annotations si nécessaire
4. **Cohérence** : Utilisez le même format pour toutes les captures
5. **Pertinence** : Ne montrez que les parties importantes

## Structure suggérée du rapport

1. **Introduction** : Présentation du projet
2. **Partie 1 : Git et GitHub**
   - Structure du projet
   - Historique des commits
   - Pull Request
   - GitHub Actions
3. **Partie 2 : Jenkins**
   - Configuration
   - Pipeline
   - Vue personnalisée
4. **Partie 3 : Intégrations**
   - Docker
   - Slack
5. **Conclusion** : Résumé et apprentissages

## Checklist avant soumission

- [ ] Toutes les captures GitHub sont présentes
- [ ] Tous les scripts sont capturés et lisibles
- [ ] Les captures Jenkins montrent un pipeline complet
- [ ] Les notifications Slack sont visibles
- [ ] Le rapport est bien organisé et commenté
- [ ] Les noms et prénoms sont correctement remplis dans le README

