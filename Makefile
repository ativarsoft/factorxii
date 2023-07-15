BUILD_DIR=build
OBJ_DIR=obj
LIB_DIR=$(BUILD_DIR)/adalib
INCLUDE_DIR=$(BUILD_DIR)/adainclude
RUNTIME_BINARY=$(LIB_DIR)/libgnat.a
RUNTIME_PROJ=factorxii.gpr

all: $(RUNTIME_BINARY)

$(RUNTIME_BINARY): $(INCLUDE_DIR)/*.ad[sb]
	gprbuild -P$(RUNTIME_PROJ)

clean:
	gprclean -P$(RUNTIME_PROJ)
	rm -fr $(OBJ_DIR)
