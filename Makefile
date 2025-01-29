TF_DIRS = $(patsubst %/main.tf, %, $(shell find . -type d -name .terraform -prune -o -name 'main.tf' -print))
VALIDATE_TF_DIRS = $(addprefix validate-,$(TF_DIRS))

# Generate docs
.PHONY: docs
docs:
	terraform-docs --config docs/.terraform-docs.yaml ./echo
	terraform-docs --config docs/.terraform-docs.yaml ./gcp-gcs
	terraform-docs --config docs/.terraform-docs.yaml ./gcp-gcs-iam
	terraform-docs --config docs/.terraform-docs.yaml ./gcp-vertex-ai
	terraform-docs --config docs/.terraform-docs.yaml ./gcp-vertex-ai-iam

# Format all terraform files
fmt:
	terraform fmt -recursive

# Check if all terraform files are formatted
fmt-check:
	terraform fmt -recursive -check

# Validate a terraform directories
$(VALIDATE_TF_DIRS): validate-%:
	@echo "Validate $*"
	terraform -chdir="$*" init -upgrade
	terraform -chdir="$*" validate

# Validate all terraform directories
validate: $(VALIDATE_TF_DIRS)
	@echo "All validated"