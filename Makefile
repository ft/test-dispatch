PREFIX ?= /usr/local

all:
	@printf 'Use "make doc".\n'

doc:
	@(cd doc && $(MAKE) man;)

clean:
	@(cd doc && $(MAKE) clean;)

install:
	install -m 0755 dispatch-test $(PREFIX)/bin
	install -m 0755 run-tests $(PREFIX)/bin
	install -m 0755 -d $(PREFIX)/share/man/man1
	install -m 0644 doc/dispatch-test.1 $(PREFIX)/share/man/man1
	install -m 0644 doc/run-tests.1 $(PREFIX)/share/man/man1

uninstall:
	rm -f $(PREFIX)/share/man/man1/dispatch-test.1
	rm -f $(PREFIX)/share/man/man1/run-tests.1
	rm -f $(PREFIX)/bin/dispatch-test
	rm -f $(PREFIX)/bin/run-tests

.PHONY: all clean doc install uninstall
