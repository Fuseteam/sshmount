# sshmount

include config.mk

install:
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	mkdir -p $(DESTDIR)$(PREFIX)/lib
	mkdir -p $(COMPREFIX)
	cp -f sshmount $(DESTDIR)$(PREFIX)/bin
	cp -f sshmountlib $(DESTDIR)$(PREFIX)/lib
	cp sshmount_autocomplete $(COMPREFIX)/sshmount
	chmod 755 $(DESTDIR)$(PREFIX)/bin/sshmount

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/sshmount\
	      $(COMPREFIX)/sshmount

.PHONY: install uninstall
