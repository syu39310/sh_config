export PATH="$HOME/.rbenv/bin:$PATH"
~/.rbenv/shims:/usr/local/bin:/usr/bin:/bin
export PATH="$HOME/.nodenv/bin:$PATH"
eval "$(nodenv init -)"

if [ -f ~/.zshrc ]; then
  . ~/.zshrc
fi
