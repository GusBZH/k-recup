#!/bin/bash
# Déploie index.html + version.json sur gh-pages directement
set -e
git checkout gh-pages
git checkout main -- index.html version.json
git add index.html version.json
git commit -m "deploy: $1" || true
git push origin gh-pages
git checkout main
