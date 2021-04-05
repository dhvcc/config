gh=$(command -v gh)
if [[ -n $gh ]]; then
  eval "$(gh completion -s zsh)"
fi

aws_completer=$(command -v aws_completer)
if [[ -n $aws_completer ]]; then
  complete -C $(which aws_completer) aws
fi

