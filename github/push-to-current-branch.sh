push:
	@echo "Enter your commit message:"
	@read commit_message; \
	current_branch=$$(git rev-parse --abbrev-ref HEAD); \
	git add .; \
	git commit -m "$$commit_message"; \
	git push origin $$current_branch


### Use this in your makefile to add all,commit all and push to your current branch : Usage - make push