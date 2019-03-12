# The pt Plugin

The pt plugin provides commands to work with Git and Pivotal Tacker.

Only work with branch name like `feature/1234567890`.

```
$ pt commit -am "Message from commit"
```

```
$ pt commit -m "Message from commit"
```

Final commit message:

```
Message from commit

[#1234567890]
```

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
