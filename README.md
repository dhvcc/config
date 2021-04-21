# Configs

## Install

```shell
curl -Lks https://raw.githubusercontent.com/dhvcc/configs/master/.cfg/install.sh | /bin/sh
```

**Warning**, Bash configs are outdated

## Dependencies

### System

- [pyenv](https://github.com/pyenv/pyenv-installer)
- [nerd-fonts](https://github.com/ryanoasis/nerd-fonts) (Hack Nerd Font Mono)
- [mon2cam](https://github.com/ShayBox/Mon2Cam) (for dual-monitor linux setup)
- [vim-plug](https://github.com/junegunn/vim-plug)

### Shell

- [docker-pretty-ps](https://github.com/politeauthority/docker-pretty-ps) (pretty print `docker ps`)

    ```bash
    pip install git+https://github.com/politeauthority/docker-pretty-psgit#egg=docker-pretty-ps --upgrade
    ```

- [htop](https://github.com/htop-dev/htop/) (better `top`)
- [fzf](https://github.com/junegunn/fzf) (`Ctrl+R` shell history search)
- [rgipgrep](https://github.com/BurntSushi/ripgrep) (better `grep`)
- [lsd](https://github.com/Peltoche/lsd) (better `ls`)
- [bat](https://github.com/sharkdp/bat) (better `cat`)
- [ranger](https://github.com/ranger/ranger) (terminal file manager)
- [most](http://www.jedsoft.org/most/) (better pager than `less`, used for `man`)
- [starship](https://github.com/denysdovhan/spaceship-prompt) (shell prompt)

### ZSH

- [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh) (`zsh` config framework)
- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
- [zsh-syntax-highlight](https://github.com/zsh-users/zsh-syntax-highlighting)
- [zsh-completions](https://github.com/zsh-users/zsh-completions)

### Terminal

- [kitty](https://github.com/kovidgoyal/kitty) (fast and feature-rich terminal emulator)
- [kitty-themes](https://github.com/dexpota/kitty-themes) (Broadcast)