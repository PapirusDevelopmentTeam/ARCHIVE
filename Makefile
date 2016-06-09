INSTALLDIR = $(DESTDIR)/usr/share/Kvantum
RM = rm -rf

all:

install: local

clear:
	$(RM) $(INSTALLDIR)/Papirus
local:
	find Papirus -type f -exec install -Dm644 '{}' "$(INSTALLDIR)/{}" \;

uninstall: clear
