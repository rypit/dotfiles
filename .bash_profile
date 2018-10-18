eval "$(nodenv init -)"
eval "$(rbenv init -)"
eval "$(pyenv init -)"

STRAP_BIN_DIR=~/src/strap/bin
if [ -d $STRAP_BIN_DIR ]; then
  PATH="$STRAP_BIN_DIR:${PATH}"
fi
