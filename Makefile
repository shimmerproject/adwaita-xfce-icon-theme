PREFIX=/home/mau/.local
DESTDIR=
CC?=gcc

builddir:
	mkdir -p build
	mkdir -p build/adwaita-xfce && cp -R adwaita-xfce/. build/adwaita-xfce

install:
	install -d $(DESTDIR)/$(PREFIX)/share/icons
	cp -rf build/adwaita-xfce $(DESTDIR)/$(PREFIX)/share/icons
	@echo
	@echo The icon-theme cache has not yet been regenerated, which means your changes may not be visible yet. Please run 'make icon-caches' next.

uninstall:
	rm -rf $(DESTDIR)/$(PREFIX)/share/icons/adwaita-xfce

icon-caches:
	gtk-update-icon-cache -f $(DESTDIR)/$(PREFIX)/share/icons/adwaita-xfce

.PHONY: all $(SUBDIRS)

clean:
	rm -rf ./build
	rm -rf ./Makefile