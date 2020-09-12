prefix = /usr/local/airframes

all: python-requirements

python-requirements:
	pip3 install -r scripts/adc/requirements.txt

install: python-requirements
	mkdir -p $(DESTDIR)$(prefix)
	install -d -D scripts/adc $(DESTDIR)$(prefix)/adc

clean:

distclean: clean

uninstall:
	rm -f $(DESTDIR)$(prefix)/adc

.PHONY: all install clean distclean uninstall
