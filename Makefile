# maelys-pilot: the smallest product the socle can release.
#
# It exists to be released, protected and adopted first: every socle
# change that writes to GitHub -- protect, tap, cut, channel -- is tried
# here before it reaches a product that people rely on. A public
# repository: its Actions minutes are free, and the branch protection
# endpoints answer here where a private repository of a free plan gets 403.

CC ?= cc
CFLAGS ?= -O2 -Wall -Wextra -Werror -std=c11
SANITIZERS ?=

BIN := build/maelys-pilot

.PHONY: all check asan-ubsan clean

all: $(BIN)

$(BIN): src/pilot.c VERSION
	mkdir -p build
	$(CC) $(CFLAGS) $(if $(SANITIZERS),-fsanitize=$(SANITIZERS) -g,) \
	    -DPILOT_VERSION='"$(shell tr -d '\n' < VERSION)"' -o $@ src/pilot.c

check: $(BIN)
	test "$$($(BIN) --version)" = "maelys-pilot $$(tr -d '\n' < VERSION)"
	test "$$($(BIN) greet socle)" = "hello, socle"
	$(BIN) greet >/dev/null 2>&1 && exit 1 || test $$? = 2

# The socle's sanitizer job runs this on Linux with clang.
asan-ubsan:
	$(MAKE) clean
	$(MAKE) check SANITIZERS=address,undefined

clean:
	rm -rf build dist
