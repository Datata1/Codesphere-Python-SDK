.PHONY: help install commit lint format test bump

.DEFAULT_GOAL := help

help: ## Shows a help message with all available commands
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "  \033[36m%-15s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

install: ## Sets up the development environment
	@echo ">>> Setting up the development environment..."
	@echo "1. Creating virtual environment with uv..."
	uv venv
	@echo "2. Installing all dependencies (including 'dev')..."
	uv pip install -e .[dev]
	@echo "3. Installing git hooks with pre-commit..."
	pre-commit install --hook-type commit-msg --hook-type pre-commit --hook-type pre-push
	@echo "\n\033[0;32mSetup complete! Please activate the virtual environment with 'source .venv/bin/activate'.\033[0m"

commit: ## Starts Commitizen for a guided commit message
	@echo ">>> Starting Commitizen for a guided commit message..."
	@if git diff --cached --quiet; then \
		echo "\033[0;33mWarning: No changes added to commit (please use 'git add ...' first).\033[0m"; \
		exit 1; \
	fi
	uv run cz commit

lint: ## Checks code quality with ruff
	@echo ">>> Checking code quality with ruff..."
	uv run ruff check src tests

format: ## Formats code with ruff
	@echo ">>> Formatting code with ruff..."
	uv run ruff format src tests

test: ## Runs tests with pytest
	@echo ">>> Running tests with pytest..."
	uv run pytest

bump: ## Bumps version, updates changelog, and creates a git tag
	@echo ">>> Bumping version and generating changelog..."
	uv run cz bump --changelog

generate: ## Regenerates the SDK, then moves docs and tests to the root
	@echo ">>> Generating Python SDK into src/codesphere_sdk..."
	uv run openapi-generator-cli generate \
		-i ./openapi.json \
		-g python \
		-o ./src \
		--additional-properties=packageName=codesphere_sdk,library=asyncio,generateSourceCodeOnly=true

	@echo ">>> Moving generated documentation and test files to project root..."
	mkdir -p ./docs
	mkdir -p ./tests
	rm -rf ./docs/api
	rm -rf ./tests/generated
	mv ./src/codesphere_sdk/docs ./docs/api
	mv ./src/codesphere_sdk/test ./tests/generated
	
	@echo ">>> Cleanup and move complete."

release: ## pushes a new tag
	@echo ">>> Starting release process..."
	$(MAKE) bump

	@echo "\n>>> Verifying tag creation..."
	exort VERSION=$$(grep 'version = ' pyproject.toml | awk -F ' = ' '{print $$2}' | tr -d '"'); \
	if git rev-parse "v$$VERSION" >/dev/null 2>&1; then \
		echo "SUCCESS: Tag v$$VERSION successfully created locally."; \
	else \
		echo "\033[0;31mERROR: cz bump FAILED to create tag v$$VERSION! Please check for errors.\033[0m"; \
		exit 1; \
	fi

	@echo "Created tag v${VERSION}"
	git push --follow-tags
	@echo "\n\033[0;32mSUCCESS: Tag v${VERSION} pushed to GitHub. The release workflow has been triggered.\033[0m"

pypi: ## publishes to PyPI
	@echo "\n>>> Building package for distribution..."
	uv build
	@echo "\n>>> Publishing to PyPI..."
	uv release
	@echo "\n\033[0;32mPyPI release complete! The GitHub Action will now create the GitHub Release.\033[0m"