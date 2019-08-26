MAN = dispatch-test.1 run-tests.1
PDF = dispatch-test.pdf run-tests.pdf
HTML = dispatch-test.html run-tests.html

COMMONOPTIONS = --self-contained --number-sections --toc

TEX_META = -V date='\today' --highlight-style=monochrome
HTML_META = -c manual.css

DISPATCH_TEX_META = -V author="Frank Terbeck"
DISPATCH_TEX_META += -V title="dispatch-test(1) Manual"
DISPATCH_HTML_META = $(DISPATCH_TEX_META) --highlight-style=monochrome
DISPATCH_MAN_META = -V title="dispatch-test" -V section="1" -V date="Nov, 2012"

RUNTESTS_TEX_META = -V author="Frank Terbeck"
RUNTESTS_TEX_META += -V title="run-tests(1) Manual"
RUNTESTS_HTML_META = $(RUNTESTS_TEX_META) --highlight-style=monochrome
RUNTESTS_MAN_META = -V title="run-tests" -V section="1" -V date="Nov, 2012"

all: man html pdf
man: $(MAN)
pdf: $(PDF)
html: $(HTML)

dispatch-test.1: dispatch-test.mdwn
	pandoc -t man $(COMMONOPTIONS) $(DISPATCH_MAN_META) -o $@ dispatch-test.mdwn
dispatch-test.pdf: dispatch-test.mdwn
	pandoc --template template.latex $(COMMONOPTIONS) $(TEX_META) $(DISPATCH_TEX_META) -o $@ dispatch-test.mdwn
dispatch-test.html: dispatch-test.mdwn
	pandoc -t html5 $(HTML_META) $(COMMONOPTIONS) $(DISPATCH_HTML_META) -o $@ dispatch-test.mdwn

run-tests.1: run-tests.mdwn
	pandoc -t man $(COMMONOPTIONS) $(RUNTESTS_MAN_META) -o $@ run-tests.mdwn
run-tests.pdf: run-tests.mdwn
	pandoc --template template.latex $(COMMONOPTIONS) $(TEX_META) $(RUNTESTS_TEX_META) -o $@ run-tests.mdwn
run-tests.html: run-tests.mdwn
	pandoc -t html5 $(HTML_META) $(COMMONOPTIONS) $(RUNTESTS_HTML_META) -o $@ run-tests.mdwn

clean:
	rm -f $(HTML) $(PDF) $(MAN) *~

.PHONY: all man html pdf clean
