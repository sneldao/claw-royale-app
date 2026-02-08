# 🚀 Quick Deploy Instructions

## Cloudflare Pages (RECOMMENDED - 1 minute)

### Method 1: Drag & Drop (Easiest)
1. Go to https://dash.cloudflare.com → Pages → Create a project
2. Select "Direct upload"
3. Drag and drop this folder
4. Your site is live! 🌐

### Method 2: Wrangler CLI
```bash
npm install -g wrangler
wrangler login
npx wrangler pages deploy .
```

## GitHub Pages
Repository created: https://github.com/sneldao/claw-royale-frontend

To enable:
1. Go to https://github.com/sneldao/claw-royale-frontend/settings/pages
2. Set Source: Deploy from branch
3. Branch: main
4. Save

## Local Test
```bash
open index.html
# or
npx serve .
```

---

**Your Files Are On GitHub:**
https://github.com/sneldao/claw-royale-frontend
