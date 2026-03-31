.PHONY: help manifest save

help:
	@echo "Target: save"
	@echo "  make save       regenerate debate/index.json, git add ., git commit, git push"
	@echo ""
	@echo "Usage: make save COMMIT_MSG=\"Your commit message\""

save:
	@node - <<'NODE'
const fs = require("fs");
const files = fs.readdirSync("debate");
const slugs = files
  .filter((f) => f.endsWith(".json") && f !== "index.json")
  .map((f) => f.replace(/\.json$/, ""))
  .sort();
fs.writeFileSync("debate/index.json", JSON.stringify(slugs, null, 2) + "\n");
NODE
	git add .
	git commit -m "$(or $(COMMIT_MSG),Update leoclaw)"
	git push
