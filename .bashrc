plugins=git

##############
# Oh-my-bash #
if [[ -d $HOME/.oh-my-bash ]]; then
  export OSH=$HOME/.oh-my-bash
  [ ! -d "$OSH/themes/dhvcc" ] && mkdir $OSH/themes/dhvcc && ln -sf $HOME/.dhvcc.bash-theme $OSH/themes/dhvcc/dhvcc.theme.sh
  OSH_THEME="dhvcc"
  source $OSH/oh-my-bash.sh
fi
#            #
##############

[ -f ~/.config/.aliasrc.sh ] && source ~/.config/.aliasrc.sh
[ -f ~/.config/.completionrc.sh ] && source ~/.config/.completionrc.sh

[ -f ~/.private_aliases.bash ] && source ~/.private_aliases.bash

# FZF
fzf=$(command -v fzf)
if [[ -n $fzf ]]; then
  [ -f /usr/share/doc/fzf/examples/key-bindings.bash ] && \
    source /usr/share/doc/fzf/examples/key-bindings.bash || \
    source /usr/share/fzf/key-bindings.bash
  [ -f /usr/share/doc/fzf/examples/completion.bash ] && \
    source /usr/share/doc/fzf/examples/completion.bash || \
    source /usr/share/fzf/completion.bash
fi

# Enable pyenv
pyenv=$(command -v pyenv)
if [[ -n $pyenv ]]; then
  export PYENV_ROOT="$HOME/.pyenv"
  export PATH="$PYENV_ROOT/bin:$PATH"
  eval "$(pyenv init -)"
fi

# NVM config
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && source "$NVM_DIR/nvm.sh"

# Install icon font for lsd
# git clone https://github.com/ryanoasis/nerd-fonts.git --depth 1
# cd nerd_fonts/
# ./install.sh Hack

