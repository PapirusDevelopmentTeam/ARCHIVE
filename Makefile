KDE4_DIR = $(DESTDIR)/usr/share/apps/k3b/pics
KF5_DIR = $(DESTDIR)/usr/share/k3b/pics
RM = rm -rf

all:

install: local

clear:
	$(RM) $(KDE4_DIR)/Papirus{,-Dark}
	$(RM) $(KF5_DIR)/Papirus{,-Dark}
local:
	find Papirus{,-Dark} -type f -exec install -Dm644 '{}' "$(KDE4_DIR)/{}" \;
	find Papirus{,-Dark} -type f -exec install -Dm644 '{}' "$(KF5_DIR)/{}" \;

uninstall: clear
