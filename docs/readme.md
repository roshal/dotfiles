
## dotfiles

configuration files for linux applications

## prerequisites

[`stow`](https://www.gnu.org/software/stow/manual/stow)

## bootstrap

```shell
stow --target "${HOME}" --stow user
```

```shell
sudo stow --target / --stow chromium
```

## listing

```shell
find "${HOME}/.config" -type l
```

## cleaning

```shell
find "${HOME}/.config" -xtype l
```

```shell
find "${HOME}/.config" -xtype l -exec rm {} +
```
