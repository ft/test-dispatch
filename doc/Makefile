all: dispatch.1 dispatch.html dispatch.info

dispatch.1: dispatch.t2t
	txt2tags --target man -o- $< | sed -e '/^$$/d' -e 's/^\\e$$//' > $@

dispatch.html: dispatch.t2t
	txt2tags --target xhtml --css-sugar -o- $< | sed -e '/^$$/d' -e 's/^\\e$$//' > $@

dispatch.texi: dispatch.t2t
	sed -e 's,\*\*\([^*]*\)\*\*,\1,g' -e 's,//\([^/]*\)//,\1,g' -e 's,__\([^_]*\)__,\1,g' < $< | txt2tags --no-style -t tex -i - -o - | pandoc -f latex -t texinfo -o $@

dispatch.info: dispatch.texi
	makeinfo dispatch.texi

clean:
	rm -f *.1 *.texi *.info *.html

.PHONY: all clean
