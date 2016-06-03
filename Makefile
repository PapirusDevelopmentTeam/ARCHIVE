INSTALLDIR = $(DESTDIR)/usr/share/yakuake/skins
RM = rm -rf

all:

install: local

clear:
	$(RM) $(INSTALLDIR)/papirus{,-dark}
local:
	find papirus{,-dark} -type f -exec install -Dm644 '{}' "$(INSTALLDIR)/{}" \;

uninstall: clear
