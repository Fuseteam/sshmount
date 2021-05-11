# sshmount

include config.mk

install:
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp -f sshmount $(DESTDIR)$(PREFIX)/bin
	cp sshmount_autocomplete $(COMPREFIX)/sshmount
	chmod 755 $(DESTDIR)$(PREFIX)/bin/sshmount

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/sshmount\
		$(COMPREFIX)/sshmount\

.PHONY: install uninstall
