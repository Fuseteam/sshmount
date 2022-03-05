# sshmount

include config.mk

install:
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	mkdir -p $(DESTDIR)$(PREFIX)/lib
	mkdir -p $(DESTDIR)$(PREFIX)/share/bash-completion/completions
	cp -f sshmount $(DESTDIR)$(PREFIX)/bin
	cp -f sshmountlib $(DESTDIR)$(PREFIX)/lib
	cp sshmount_autocomplete $(COMPREFIX)/sshmount
	sed -i 's|@prefix@|$(DESTDIR)$(PREFIX)|' $(DESTDIR)$(PREFIX)/bin/sshmount
	sed -i 's|@prefix@|$(DESTDIR)$(PREFIX)|' $(COMPREFIX)/sshmount
	chmod 755 $(DESTDIR)$(PREFIX)/bin/sshmount

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/sshmount\
	      $(COMPREFIX)/sshmount

.PHONY: install uninstall
