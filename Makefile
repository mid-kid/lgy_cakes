PYTHON := python3

dir_build := build

cakes := agb_signatures.cake agb_bootscreen.cake twl_signatures.cake twl_cartridges.cake

.PHONY: all
all: $(cakes)

%.cake: %/recipe.yaml %/patches.s
	@mkdir -p $(dir_build)/$*
	@echo "bake $@"
	@cd $(dir_build)/$* && \
		armips $(abspath $*/patches.s) && \
		$(PYTHON) $(abspath patissier.py) $(abspath $<) $(abspath $@)
