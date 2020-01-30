SOURCES = $(patsubst ./%/Dockerfile,%,$(shell find . -maxdepth 2 -name 'Dockerfile'))
TARGETS = $(patsubst %,image/%,$(SOURCES))

.PHONY: all
all: build

.PHONY: build
build: $(TARGETS)

REGISTRY := davidpenn
image/%:
	docker build --rm --force-rm -t $(REGISTRY)/$* ./$*
