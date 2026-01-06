# Permissions Requises pour le Token GitHub

## Erreur Actuelle
```
refusing to allow a Personal Access Token to create or update workflow 
`.github/workflows/ci.yml` without `workflow` scope
```

## Solution : Ajouter la Permission "workflow"

### Option 1 : Modifier le Token Existant

1. GitHub.com → Settings → Developer settings → Personal access tokens → Tokens (classic)
2. Trouvez votre token "DevOps Project Token"
3. Cliquez sur l'icône **"Edit"** (crayon) à droite
4. Dans la section **Scopes**, cochez :
   - ✅ **repo** (déjà coché)
   - ✅ **workflow** (NOUVEAU - à cocher)
5. Cliquez sur **"Update token"** en bas

### Option 2 : Créer un Nouveau Token

Si vous préférez créer un nouveau token :

1. Créez un nouveau token (comme avant)
2. Cochez les permissions :
   - ✅ **repo** (toutes les permissions)
   - ✅ **workflow** (permission pour GitHub Actions)
3. Copiez le nouveau token
4. Utilisez-le quand Git demande le mot de passe

## Après avoir ajouté la permission

Réessayez :
```bash
git push -u origin main
```

## Permissions Recommandées pour ce Projet

- ✅ **repo** : Accès complet aux dépôts
- ✅ **workflow** : Mise à jour des workflows GitHub Actions

Ces deux permissions sont suffisantes pour ce projet DevOps.

