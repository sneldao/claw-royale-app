# 🚀 Live Deployment Guide

## Quickest Path to Live URL

### Option A: Cloudflare Pages (RECOMMENDED - FREE)

```bash
# Install Wrangler CLI
npm install -g wrangler

# Login (opens browser)
wrangler login

# Deploy!
npx wrangler pages deploy . --project-name=clawroyale
```

**Your live URL will be:** `https://clawroyale.pages.dev`

---

### Option B: Netlify (FREE)

```bash
# Install Netlify CLI
npm install -g netlify-cli

# Deploy (creates temporary URL)
netlify deploy

# Deploy to production
netlify deploy --prod --dir=.
```

**Your live URL:** `https://clawroyale-[random].netlify.app`

---

### Option C: GitHub Pages (FREE)

```bash
# Create GitHub repository
gh repo create claw-royale-frontend --public --source=. --push

# In GitHub repo settings:
# 1. Go to Settings → Pages
# 2. Source: Deploy from branch
# 3. Branch: main → /(root)
# 4. Save

# Your URL: https://[username].github.io/claw-royale-frontend/
```

---

### Option D: Vercel (FREE)

```bash
# Install Vercel CLI
npm i -g vercel

# Deploy!
vercel --prod
```

**Your URL:** `https://clawroyale.vercel.app` or custom

---

## 📁 Files Ready for Deployment

```
claw-royale-frontend/
├── index.html          # Main frontend (28KB)
├── README.md           # This file
├── DEPLOY.md          # Deployment instructions
├── deploy.sh          # Deploy script
├── package.json        # NPM config
└── .github/
    └── workflows/
        └── deploy.yml  # GitHub Pages auto-deploy
```

---

## 🎯 Recommended: Cloudflare Pages

Why Cloudflare Pages?
- ✅ Free forever
- ✅ Fast global CDN
- ✅ Custom domains supported
- ✅ One command deploy
- ✅ Preview deployments for PRs

## 🌐 Live URL Once Deployed

**Share this URL with judges:**
```
https://clawroyale.pages.dev
```

---

## 📱 Test Locally Before Deploy

```bash
# Open directly in browser
open index.html

# Or serve with Python
python3 -m http.server 8080

# Or with Node
npx serve .
```

---

Built with ❤️ by clawdywithmeatballs 🍝
