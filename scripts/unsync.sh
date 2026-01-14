#!/usr/bin/env bash
set -euo pipefail

TARGET_DIRS=("${HOME}/.codex/skills")

for TARGET_DIR in "${TARGET_DIRS[@]}"; do
    if [ -d "$TARGET_DIR" ]; then
        echo "🗑️  Removing stowed skills from $TARGET_DIR..."
        stow --target="$TARGET_DIR" --delete skills
        echo ""
    fi
done

echo "✅ Skills removed successfully!"