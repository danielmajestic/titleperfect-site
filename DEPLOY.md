# Deploying titleperfect-site

This Cloudflare Pages project is **not** connected to GitHub auto-deploy.
`git push` updates the repo but does NOT publish the site.

---

## Quick deploy (manual)

```bash
cd ~/projects/titleperfect-site
./deploy.sh
```

Or directly:

```bash
cd ~/projects/titleperfect-site
wrangler pages deploy . --project-name titleperfect
```

---

## Automated deploy via GitHub Actions (one-time setup)

The workflow at `.github/workflows/deploy.yml` will auto-deploy on every push to `main`
once two GitHub secrets are added. **This only needs to be done once.**

### Step 1 — Create a Cloudflare API Token

1. Go to [dash.cloudflare.com/profile/api-tokens](https://dash.cloudflare.com/profile/api-tokens)
2. Click **Create Token**
3. Use the **"Edit Cloudflare Workers"** template (includes Pages permissions), or create a custom token with:
   - **Cloudflare Pages — Edit** (Account level)
4. Copy the token — you won't see it again

### Step 2 — Add secrets to GitHub

Go to: https://github.com/danielmajestic/titleperfect-site/settings/secrets/actions

Add these two secrets:

| Name | Value |
|------|-------|
| `CLOUDFLARE_API_TOKEN` | The token you just created |
| `CLOUDFLARE_ACCOUNT_ID` | `b2476d154e10213947dbfc52ff48e5dd` |

### Step 3 — Verify

Push any change to `main` and check the Actions tab:
https://github.com/danielmajestic/titleperfect-site/actions

---

## Project details

- **Cloudflare project name:** `titleperfect`
- **Account ID:** `b2476d154e10213947dbfc52ff48e5dd`
- **Live URL:** https://titleperfect.app
- **Pages dashboard:** https://dash.cloudflare.com/b2476d154e10213947dbfc52ff48e5dd/pages/view/titleperfect
