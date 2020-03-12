
## dotfiles

configuration files for linux applications

## prerequisites

[`stow`](https://www.gnu.org/software/stow/manual/stow)

## bootstrap

```shell
cd packages
stow --target ${HOME} --stow user
```
