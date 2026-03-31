.PHONY: help manifest save

help:
	@echo "Target: save"
	@echo "  make save       regenerate conversations.json, git add ., git commit, git push"
	@echo ""
	@echo "Usage: make save COMMIT_MSG=\"Your commit message\""

save:
	git add .
	git commit -m "$(or $(COMMIT_MSG),Update leoclaw)"
	git push
