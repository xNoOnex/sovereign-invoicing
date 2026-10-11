#!/usr/bin/env bash
set -e

# Sync files
cp index.html estimator.html
touch .nojekyll

# Stage and commit to main
git add index.html estimator.html .nojekyll
git commit -m "feat: set estimator as index.html root and sync gh-pages" || true

# Push main and mirror to gh-pages branch
git push origin main
git push origin main:gh-pages --force

echo "Deployment complete."
