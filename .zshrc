neofetch

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

HISTFILE=~/.histfile

HISTSIZE=2000

SAVEHIST=2000

# To prevent history from recording duplicated entries

setopt hist_ignore_all_dups

# A useful trick to prevent particular entries from being recorded into a history by preceding them with at least one space.

setopt hist_ignore_space

# Default completion style is quite plain and ugly. If you want to improve its appearance, enter the following commands: 
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' completer _expand _complete _expand_alias
zstyle ':completion:*' menu select=1
zstyle ':completion:*' original true
zstyle ':completion:*' remote-access false
zstyle ':completion:*' use-perl true
zstyle ':completion:*' verbose true
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' squeeze-slashes true
autoload -Uz compinit
compinit -D
zmodload zsh/complist

autoload -U colors && colors

PROMPT="%{$fg[white]%}[%{$fg[green]%}%n%{$fg[white]%}@%{$fg[white]%}%m %{$fg[white]%}%1~]$ "

bindkey "^[[1;3C" forward-word
bindkey "^[[1;3D" backward-word

bindkey "^[[1;5D" backward-word
bindkey "^[[1;5C" forward-word
