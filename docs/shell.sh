
exit

ln -s --target "${HOME}" user/.imwheelrc

### user

stow --target "${HOME}" --stow user

### root

stow --target / --stow root

### adopt

stow --target "${HOME}" --adopt user

stow --target / --adopt root

### chromium

sudo stow --target / --stow chromium

### chromium

stow --target "${HOME}" --stow firefox

### help

find "${HOME}/.config" -xtype l

### back links

ln --symbolic /home/user/.config/mimeapps.list user/.config/mimeapps.list
