#!/bin/bash
# Quick build check without npm
echo "Checking TypeScript files..."
find src -name "*.tsx" -o -name "*.ts" | head -5
echo "Build script from package.json: tsc && vite build"
echo "TypeScript config exists: $(test -f tsconfig.json && echo 'YES' || echo 'NO')"
echo "Public folder exists: $(test -d public && echo 'YES' || echo 'NO')"
echo "Audio file exists: $(test -f public/nfl-draft-theme.mp3 && echo 'YES' || echo 'NO')"
ls -lh public/nfl-draft-theme.mp3 2>/dev/null || echo "Audio file not found"
