INSTALLDIR = $(DESTDIR)/usr/share/themes
RM = rm -rf

all:

install: local

clear:
	$(RM) $(INSTALLDIR)/papirus318

local:
	find papiru* -type f -exec install -Dm644 '{}' "$(INSTALLDIR)/{}" \;

uninstall: clear
