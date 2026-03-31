.PHONY: help save

help:
	@echo "Target: save"
	@echo "  make save       git add . && git commit && git push"
	@echo ""
	@echo "Usage: make save COMMIT_MSG=\"Your commit message\""

save:
	git add .
	git commit -m "$(or $(COMMIT_MSG),Update leoclaw)"
	git push
