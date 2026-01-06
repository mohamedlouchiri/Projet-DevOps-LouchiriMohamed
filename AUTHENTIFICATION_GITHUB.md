# Résolution du Problème d'Authentification GitHub

## Problème
GitHub a bloqué l'authentification par mot de passe. Vous devez utiliser un **Personal Access Token (PAT)**.

## Solution : Créer un Personal Access Token

### Étape 1 : Créer le token sur GitHub

1. Allez sur GitHub.com et connectez-vous
2. Cliquez sur votre **photo de profil** (en haut à droite)
3. Cliquez sur **Settings**
4. Dans le menu de gauche, cliquez sur **Developer settings** (tout en bas)
5. Cliquez sur **Personal access tokens** → **Tokens (classic)**
6. Cliquez sur **Generate new token** → **Generate new token (classic)**
7. Donnez un nom au token (ex: "DevOps Project")
8. Sélectionnez les permissions :
   - ✅ **repo** (toutes les cases sous "repo")
9. Cliquez sur **Generate token** (en bas)
10. **IMPORTANT** : Copiez le token immédiatement (vous ne pourrez plus le voir après !)
   - Il ressemble à : `ghp_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx`

### Étape 2 : Utiliser le token pour pousser

Quand Git vous demande votre **username**, entrez : `mohamedlouchiri`

Quand Git vous demande votre **password**, entrez : **le token que vous venez de copier** (pas votre mot de passe GitHub)

### Alternative : Configurer Git Credential Manager

Vous pouvez aussi configurer Git pour stocker vos credentials :

```bash
# Configurer Git pour utiliser le credential manager
git config --global credential.helper manager-core
```

Puis quand vous ferez `git push`, Windows vous demandera vos identifiants une fois et les sauvegardera.

## Commandes à exécuter après avoir créé le token

```bash
cd C:\Users\mlouc\devops
git push -u origin main
```

Quand on vous demande :
- **Username** : `mohamedlouchiri`
- **Password** : Collez votre token (commence par `ghp_`)

