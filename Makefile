all:
	@printf 'Use "make doc".\n'

doc:
	@(cd doc && $(MAKE) all;)

clean:
	@(cd doc && $(MAKE) clean;)

.PHONY: all clean doc
