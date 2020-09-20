PROMPT='[%F{magenta}%B%n%b%f@%F{blue}%U%m%u %F{green}%C%f]# '
RPROMPT='[%F{green}%d%f]'

# 履歴ファイルの保存先
HISTFILE=~/.zsh_history

# メモリに保存される履歴の件数
export HISTSIZE=1000

# 履歴ファイルに保存される履歴の件数
export SAVEHIST=100000

# 同時に起動した zsh の間でヒストリを共有する
setopt share_history

# 余分な空白は詰めて記録
setopt hist_reduce_blanks

# 履歴をインクリメンタルに追加
setopt inc_append_history

# インクリメンタルからの検索
bindkey "^R" history-incremental-search-backward

# zsh-completions の設定。コマンド補完機能
autoload -U compinit && compinit -u

# コマンドのスペルを訂正する
setopt correct

# 補完で小文字でも大文字にマッチさせる
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# cd した先のディレクトリをディレクトリスタックに追加する
# cd [TAB] でディレクトリのヒストリが表示されるので、選択して移動できる
# ※ ディレクトリスタック: 今までに行ったディレクトリのヒストリのこと
setopt auto_pushd
 
# pushd したとき、ディレクトリがすでにスタックに含まれていればスタックに追加しない
setopt pushd_ignore_dups

# command alias
alias ls='ls -FG'
alias ll='ls -alFG'
alias la='ls -aFG'
alias his='history'
alias hisa='history -E 1'
