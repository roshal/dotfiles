
## dotfiles

configuration files for linux applications

## prerequisites

[`stow`](https://www.gnu.org/software/stow/manual/stow)

## management

```shell
stow --target "${HOME}" --stow user
```

```shell
sudo stow --target / --stow chromium
```

## find symbolic links

```shell
find "${HOME}/.config" -type l
```

## find broken symbolic links

```shell
find "${HOME}/.config" -xtype l
```

## remove broken symbolic links

```shell
find "${HOME}/.config" -xtype l -exec rm {} +
```
