BUILD_DIR=build
OBJ_DIR=obj
LIB_DIR=$(BUILD_DIR)/adalib
INCLUDE_DIR=$(BUILD_DIR)/adainclude
RUNTIME_BINARY=$(LIB_DIR)/libgnat.a
RUNTIME_PROJ=factorxii.gpr

all: $(RUNTIME_BINARY)

dependencies:
ifneq ($(shell which apt),)
	apt-get install $(shell cat dependencies.list)
else
	$(error No known package manager was found.)
endif

$(RUNTIME_BINARY): $(INCLUDE_DIR)/*.ad[sb]
	gprbuild -P$(RUNTIME_PROJ)

clean:
	gprclean -P$(RUNTIME_PROJ)
	rm -fr $(OBJ_DIR)

test:
	@echo No tests available.

.PHONY: clean test dependencies

