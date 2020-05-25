
## dotfiles

configuration files for linux applications

## prerequisites

[`stow`](https://www.gnu.org/software/stow/manual/stow)

## bootstrap

```shell
stow --target ${HOME} --stow user
```

```shell
sudo stow --target / --stow chromium
```

## verification

```shell
find ${HOME}/.config -xtype l
```
