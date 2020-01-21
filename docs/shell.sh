
exit

stow --target ${HOME} --stow user

stow --target ${HOME} --adopt user

exit

stow --target / --stow root

stow --target / --adopt root
