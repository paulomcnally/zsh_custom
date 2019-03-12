# The pt Plugin

The pt plugin provides commands to work with Git and Pivotal Tacker.

### Clone
```
$ cd ~
$ git clone https://github.com/paulomcnally/zsh_custom.git
```

### Setup

Edit `.zshrc` file.

```
$ vi ~/.zshrc
```

Find `ZSH_CUSTOM` and set.

```
ZSH_CUSTOM=~/zsh_custom
```

Find `plugins=()` and add `pt`.

```
plugins=(
  pt git
)
```
