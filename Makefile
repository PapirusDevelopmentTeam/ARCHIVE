INSTALLDIR = $(DESTDIR)/usr/share/icons
AMAROKDIR = $(DESTDIR)/usr/share/apps/amarok/icons
INSTALL = install -d
RM = rm -rf
CP = cp -rf

all:

install: local

clear:
	$(RM) $(INSTALLDIR)/papirus{,-dark,-arc,-arc-dark}
	$(RM) $(AMAROKDIR)/papirus

local:
	$(INSTALL) $(INSTALLDIR)
	$(INSTALL) $(AMAROKDIR)/papirus
	
	$(CP) papirus{,-dark,-arc,-arc-dark} $(INSTALLDIR)
	$(CP) papirus/extra-icons/amarok/* $(AMAROKDIR)/papirus/

uninstall: clear
