install:
	brew bundle

# Synchronize skills to target directories using GNU stow
sync:
	chmod +x ./scripts/sync.sh
	./scripts/sync.sh

# Remove symlinks from target directories (unstow)
unsync:
	chmod +x ./scripts/unsync.sh
	./scripts/unsync.sh

# Show current symlink status
status:
	chmod +x ./scripts/status.sh
	./scripts/status.sh
