# Aliases for executables
GH ?= gh
GIT ?= git

.PHONY: debug
debug:
	@echo "GH: $(GH)"
	@echo "GIT: $(GIT)"

# Finish the branch
.PHONY: finish
finish:
	$(GIT) push -u origin HEAD
	$(GH) pr create --fill
	$(GH) pr merge --merge --delete-branch
