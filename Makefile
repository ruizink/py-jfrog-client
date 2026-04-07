OPENAPI_GENERATOR_VERSION ?= 7.21.0
OPENAPI_SPEC              ?= https://raw.githubusercontent.com/ruizink/jfrog-openapi-toolkit/refs/tags/v1.0.0/jfrog-merged-api/spec.json
OUTPUT_DIR                ?= .
PACKAGE_NAME              ?= jfrog_client
GENERATOR                 ?= python
GIT_USER_ID               ?= ruizink
GIT_REPO_ID               ?= py-jfrog-client

.PHONY: generate clean-generated

## Generate the Python client from an OpenAPI spec.
## Usage:
##   make generate                          # use defaults
##   make generate OPENAPI_SPEC=my-api.yaml
##   make generate OPENAPI_GENERATOR_VERSION=7.22.0
generate:
	docker run --rm \
		-v "$(CURDIR):/workspace" \
		-w /workspace \
		openapitools/openapi-generator-cli:v$(OPENAPI_GENERATOR_VERSION) generate \
		  --input-spec        $(OPENAPI_SPEC) \
		  --generator-name    $(GENERATOR) \
		  --output            /workspace/$(OUTPUT_DIR) \
		  --package-name      $(PACKAGE_NAME) \
		  --git-user-id       $(GIT_USER_ID) \
		  --git-repo-id       $(GIT_REPO_ID)
