# Guide Étape par Étape : Créer un Personal Access Token

## Navigation dans GitHub Settings

1. ✅ Vous êtes déjà sur la page Settings
2. ⬇️ **Faites défiler le menu de gauche** jusqu'en bas
3. 🔍 Cherchez **"Developer settings"** (tout en bas de la liste)
4. 👆 Cliquez sur **"Developer settings"**

## Créer le Token

### Étape 1 : Accéder aux Tokens
- Dans la page "Developer settings", cliquez sur **"Personal access tokens"**
- Puis cliquez sur **"Tokens (classic)"**

### Étape 2 : Générer un nouveau token
- Cliquez sur le bouton vert **"Generate new token"**
- Sélectionnez **"Generate new token (classic)"**

### Étape 3 : Configurer le token
- **Note** : Donnez un nom descriptif (ex: "DevOps Project Token")
- **Expiration** : Choisissez une durée (90 jours recommandé pour un projet)
- **Scopes (permissions)** : Cochez **UNIQUEMENT** :
  - ✅ **repo** (toutes les permissions sous "repo" seront automatiquement cochées)
    - Cela inclut : repo:status, repo_deployment, public_repo, repo:invite, security_events

### Étape 4 : Générer et copier
- Faites défiler en bas et cliquez sur **"Generate token"** (bouton vert)
- **⚠️ IMPORTANT** : Copiez le token immédiatement !
  - Il ressemble à : `ghp_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx`
  - Vous ne pourrez plus le voir après avoir quitté la page !

## Utiliser le Token

Une fois le token copié, retournez dans PowerShell et exécutez :

```bash
git push -u origin main
```

Quand Git vous demande :
- **Username** : `mohamedlouchiri`
- **Password** : **Collez le token** (pas votre mot de passe GitHub normal)

## Alternative : Stocker les credentials

Pour éviter de retaper le token à chaque fois :

```bash
# Configurer Git pour sauvegarder les credentials
git config --global credential.helper manager-core
```

Ensuite, Windows vous demandera vos identifiants une fois et les sauvegardera.

