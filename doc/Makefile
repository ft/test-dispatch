MAN = dispatch.1 runtests.1
PDF = dispatch.pdf runtests.pdf
HTML = dispatch.html runtests.html

COMMONOPTIONS = --self-contained --number-sections --normalize --smart --toc

TEX_META = -V date='\today' --highlight-style=monochrome
HTML_META = -c manual.css

DISPATCH_TEX_META = -V author="Frank Terbeck"
DISPATCH_TEX_META += -V title="dispatch(1) Manual"
DISPATCH_HTML_META = $(DISPATCH_TEX_META) --highlight-style=monochrome
DISPATCH_MAN_META = -V title="dispatch" -V section="1" -V date="Nov, 2012"

RUNTESTS_TEX_META = -V author="Frank Terbeck"
RUNTESTS_TEX_META += -V title="runtests(1) Manual"
RUNTESTS_HTML_META = $(RUNTESTS_TEX_META) --highlight-style=monochrome
RUNTESTS_MAN_META = -V title="runtests" -V section="1" -V date="Nov, 2012"

all: man html pdf
man: $(MAN)
pdf: $(PDF)
html: $(HTML)

dispatch.1: dispatch.mdwn
	pandoc -t man $(COMMONOPTIONS) $(DISPATCH_MAN_META) -o $@ dispatch.mdwn
dispatch.pdf: dispatch.mdwn
	pandoc --template template.latex $(COMMONOPTIONS) $(TEX_META) $(DISPATCH_TEX_META) -o $@ dispatch.mdwn
dispatch.html: dispatch.mdwn
	pandoc -t html5 $(HTML_META) $(COMMONOPTIONS) $(DISPATCH_HTML_META) -o $@ dispatch.mdwn

runtests.1: runtests.mdwn
	pandoc -t man $(COMMONOPTIONS) $(RUNTESTS_MAN_META) -o $@ runtests.mdwn
runtests.pdf: runtests.mdwn
	pandoc --template template.latex $(COMMONOPTIONS) $(TEX_META) $(RUNTESTS_TEX_META) -o $@ runtests.mdwn
runtests.html: runtests.mdwn
	pandoc -t html5 $(HTML_META) $(COMMONOPTIONS) $(RUNTESTS_HTML_META) -o $@ runtests.mdwn

clean:
	rm -f $(HTML) $(PDF) $(MAN) *~

.PHONY: all man html pdf clean
