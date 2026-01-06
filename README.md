# Projet DevOps

**Nom:** Louchiri  
**Prénom:** Mohamed

## Description

Ce projet est une application simple développée dans le cadre d'un projet DevOps. L'application affiche un message de bienvenue et démontre l'utilisation de Git, GitHub, GitHub Actions, Jenkins, Docker et l'intégration avec Slack.

## Technologies utilisées

- Java
- Maven
- Git/GitHub
- GitHub Actions
- Jenkins
- Docker
- Docker Compose
- Slack (notifications)

## Structure du projet

```
.
├── src/
│   └── main/
│       └── java/
│           └── com/
│               └── devops/
│                   └── App.java
├── pom.xml
├── Dockerfile
├── docker-compose.yml
├── Jenkinsfile
└── README.md
```

## Prérequis

- Java JDK 11 ou supérieur
- Maven 3.6 ou supérieur
- Docker et Docker Compose
- Jenkins
- Compte GitHub
- Webhook Slack configuré

## Installation et exécution

### Localement

```bash
mvn clean compile
mvn exec:java -Dexec.mainClass="com.devops.App"
```

### Avec Docker

```bash
docker-compose up --build
```

## Pipeline CI/CD

Le projet utilise :
- **GitHub Actions** : pour les tests et builds automatiques
- **Jenkins** : pour le pipeline complet (Checkout, Build, Archive, Deploy, Notify Slack)

## Auteur

Louchiri Mohamed

