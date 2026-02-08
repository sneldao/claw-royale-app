#!/bin/bash

# Claw Royale - Deploy Script

echo "🦞 Deploying Claw Royale Frontend..."
echo ""

# Check for Cloudflare Wrangler
if command -v wrangler &> /dev/null; then
    echo "☁️ Deploying to Cloudflare Pages..."
    npx wrangler pages deploy . --project-name=clawroyale
elif command -v netlify &> /dev/null; then
    echo "🌐 Deploying to Netlify..."
    netlify deploy --prod --dir=.
else
    echo ""
    echo "❌ No deployment tool found. Choose an option:"
    echo ""
    echo "1. Cloudflare Pages (FREE - recommended)"
    echo "   npm install -g wrangler && wrangler login"
    echo "   npx wrangler pages deploy . --project-name=clawroyale"
    echo ""
    echo "2. Netlify (FREE)"
    echo "   npm install -g netlify-cli"
    echo "   netlify deploy --prod --dir=."
    echo ""
    echo "3. GitHub Pages"
    echo "   gh repo create claw-royale-frontend --public --source=. --push"
    echo "   Then enable Pages in repo settings"
    echo ""
    echo "4. Manual Upload"
    echo "   Go to https://dash.cloudflare.com → Pages → Direct upload"
    echo ""
fi
