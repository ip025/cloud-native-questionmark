ifeq ($(MARP_SLIDE_DECK),)
    $(error MARP_SLIDE_DECK variable must be specified)
endif

MARP_THEME_SET := $(or $(MARP_THEME_SET),)
ifneq ($(MARP_THEME_SET),)
MARP_THEME_SET_ARG := --theme-set $(MARP_THEME_SET)
endif

DOCKER_OPTS := --rm --init -v $(PWD):/home/marp/app/ -e LANG=$(LANG) -e MARP_USER="$(shell id -u):$(shell id -g)"
MARP_COMMON_OPTS := $(MARP_SLIDE_DECK) --allow-local-files $(MARP_THEME_SET_ARG)

.PHONY: pdf
pdf:
	docker run $(DOCKER_OPTS) marpteam/marp-cli $(MARP_COMMON_OPTS) --pdf --pdf-notes

.PHONY: pptx
pptx:
	docker run $(DOCKER_OPTS) marpteam/marp-cli $(MARP_COMMON_OPTS) --pptx

.PHONY: html
html:
	docker run $(DOCKER_OPTS) marpteam/marp-cli $(MARP_COMMON_OPTS)