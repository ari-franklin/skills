#!/usr/bin/env bash
echo "📍 Stow directory: $(pwd)"
echo ""

TARGET_DIRS=("${HOME}/.codex/skills")

for TARGET_DIR in "${TARGET_DIRS[@]}"; do
    echo "🎯 Target directory: $TARGET_DIR"
    if [ -d "$TARGET_DIR" ]; then
        echo "📦 Symlinked skills:"
        ls -1 "$TARGET_DIR" 2>/dev/null | while read skill; do
            link_path="$TARGET_DIR/${skill}"
            target=$(readlink "${link_path}" 2>/dev/null || echo "broken")
            printf "   %-40s -> %s\n" "${skill}" "${target}"
        done
    else
        echo "   (directory not yet created)"
    fi
    echo ""
done