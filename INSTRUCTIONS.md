# Instructions de Configuration du Projet DevOps

## Partie 1 : Configuration Git et GitHub

### 1. Initialisation du dépôt Git

```bash
# Initialiser le dépôt Git
git init

# Ajouter tous les fichiers
git add .

# Premier commit
git commit -m "Initial commit: Structure du projet DevOps"

# Vérifier que vous êtes sur la branche main
git branch -M main

# Si la branche main n'existe pas, créez-la
git checkout -b main
```

### 2. Création du dépôt GitHub

1. Allez sur GitHub.com
2. Créez un nouveau dépôt nommé `Projet-DevOps-LouchiriMohamed`
3. **Ne pas** initialiser avec README, .gitignore ou licence (déjà créés)

### 3. Lier le dépôt local à GitHub

```bash
# Ajouter le remote (remplacez par votre URL)
git remote add origin https://github.com/VOTRE_USERNAME/Projet-DevOps-LouchiriMohamed.git

# Pousser vers GitHub
git push -u origin main
```

### 4. Créer et pousser la branche dev

```bash
# Créer la branche dev à partir de main
git checkout -b dev

# Pousser la branche dev vers GitHub
git push -u origin dev
```

### 5. Faire des modifications et commits sur dev

```bash
# Faire des modifications (ex: modifier App.java)
# Puis commit et push
git add .
git commit -m "Modifications sur la branche dev"
git push origin dev
```

### 6. Créer une Pull Request

1. Allez sur GitHub dans votre dépôt
2. Cliquez sur "Pull requests"
3. Cliquez sur "New pull request"
4. Sélectionnez `dev` → `main`
5. Créez la PR

Le workflow GitHub Actions se déclenchera automatiquement.

## Partie 2 : Configuration Jenkins

### 1. Installation des plugins Jenkins requis

Dans Jenkins, allez dans **Manage Jenkins** → **Manage Plugins** et installez :
- GitHub Plugin
- Pipeline Plugin
- Slack Notification Plugin
- Docker Pipeline Plugin
- Maven Integration Plugin

### 2. Configuration des credentials

1. **GitHub** : 
   - **Manage Jenkins** → **Manage Credentials**
   - Ajoutez vos credentials GitHub (Personal Access Token)

2. **Slack** :
   - Créez un webhook Slack : https://api.slack.com/messaging/webhooks
   - Dans Jenkins, ajoutez une credential de type "Secret text" avec l'ID `slack-webhook-url`

### 3. Création du projet Jenkins

1. **New Item** → Nom : `PipeLine-LouchiriMohamed`
2. Sélectionnez **Pipeline**
3. Dans **Pipeline** :
   - **Definition** : Pipeline script from SCM
   - **SCM** : Git
   - **Repository URL** : URL de votre dépôt GitHub
   - **Credentials** : Vos credentials GitHub
   - **Branches to build** : `*/main` ou `*/dev`
   - **Script Path** : `Jenkinsfile`

### 4. Configuration de la surveillance GitHub

Dans la configuration du projet :
- **Build Triggers** → Cochez **GitHub hook trigger for GITScm polling**
- Ou configurez un webhook GitHub pointant vers : `http://VOTRE_JENKINS_URL/github-webhook/`

### 5. Création d'une vue personnalisée

1. **New View** → Nom : `Mes Pipelines`
2. Sélectionnez **List View**
3. Dans **Job Filters** :
   - **Add filter** → **Name**
   - **Pattern** : `.*PipeLine.*`
4. Sauvegardez

### 6. Exécution du pipeline

1. Cliquez sur **Build Now** dans votre projet
2. Surveillez la console de sortie
3. Vérifiez les notifications Slack

## Configuration Slack

### Créer un webhook Slack

1. Allez sur https://api.slack.com/apps
2. Créez une nouvelle app ou utilisez un workspace existant
3. Activez **Incoming Webhooks**
4. Créez un webhook pour votre canal (ex: `#devops-notifications`)
5. Copiez l'URL du webhook
6. Ajoutez-la dans Jenkins comme credential `slack-webhook-url`

## Tests locaux

### Tester l'application Java

```bash
mvn clean compile
mvn test
mvn exec:java -Dexec.mainClass="com.devops.App"
```

### Tester avec Docker

```bash
docker-compose build
docker-compose up
```

## Structure des captures d'écran à fournir

1. **GitHub** :
   - Structure du projet (arborescence)
   - Historique des commits
   - Pull Request créée
   - Workflow GitHub Actions (onglet Actions)

2. **Scripts** :
   - Jenkinsfile complet
   - Workflow GitHub Actions (.github/workflows/ci.yml)
   - Dockerfile
   - docker-compose.yml

3. **Jenkins** :
   - Vue d'ensemble du pipeline
   - Console de sortie (étapes réussies)
   - Vue personnalisée avec les projets PipeLine
   - Historique des builds

4. **Slack** :
   - Notifications reçues
   - Messages de succès/échec du pipeline

## Notes importantes

- Assurez-vous que Maven est installé sur votre machine Jenkins
- Vérifiez que Docker est accessible depuis Jenkins
- Testez le webhook Slack avant de lancer le pipeline complet
- Les tests doivent passer pour que le déploiement se fasse

