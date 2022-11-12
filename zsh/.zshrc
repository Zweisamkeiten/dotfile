# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# autoload -Uz compinit promptinit
# compinit
# promptinit

# # This will set the default prompt to the pws theme
# prompt pws

# # End of lines added by compinstall

# alias vim='lvim'
alias e='lvim'
alias vf='vim $(fzf --height=40%)'
alias ef='lvim $(fzf --height=40%)'
alias emacs='emacsclient -nc $(fzf --height=40%)'

alias s="neofetch"
alias ht="htop"
alias hi="history"
alias la="ls --color -alh -v"
alias ip='ip -color=auto'
alias yarn='yarn --use-yarnrc "$XDG_CONFIG_HOME/yarn/config"'
alias lg='lazygit'
alias ra='ranger --choosedir=$XDG_STATE_HOME/ranger/rangerdir;cd "$(cat $XDG_STATE_HOME/ranger/rangerdir)"'
alias netprocs='lsof -P -i -n'
alias tg='trans en:zh -x 127.0.0.1:20171 -I -4'
alias tb='trans en:zh -e bing -I -4'
alias tz='trans zh:en -I -4 -x 127.0.0.1:20171'
alias lxappearance='lxappearance ~/.config/gtk-3.0/settings.ini'

# TouchPad
alias touchpadoff='xinput list | awk "/Touchpad/ {print \$6}" | awk -F "=" "{print \$2}" | xargs xinput --disable'
alias touchpadon='xinput list | awk "/Touchpad/ {print \$6}" | awk -F "=" "{print \$2}" | xargs xinput --enable'

# Quick edit
alias zshrc='lvim ~/.config/zsh/.zshrc'
alias vimrc='vim ~/.config/vim/vimrc'
alias zshenv='lvim ~/.config/zsh/.zshenv'
alias zshprofile='lvim ~/.config/zsh/.zprofile'
alias zimrc='lvim ~/.config/zsh/.zimrc'
alias picomconf='lvim ~/.config/picom/picom.conf'
alias rc.lua='lvim ~/.config/awesome/rc.lua'
alias theme.lua='lvim ~/.config/awesome/theme.lua'

alias headphone='pactl set-sink-port alsa_output.pci-0000_00_1f.3.analog-stereo analog-output-headphones'
alias mic='pactl set-source-port alsa_input.pci-0000_00_1f.3.analog-stereo analog-input-headset-mic'
alias speaker='pactl set-sink-port alsa_output.pci-0000_00_1f.3.analog-stereo analog-output-speaker'

alias proxy='ALL_PROXY="socks://127.0.0.1:20170"'
#alias gem='https_proxy="https//:127.0.0.1:20172" gem'

alias cl='systemctl --user restart xkeysnail.service && bash ~/c/b/keyboard.sh'

alias wget="wget --hsts-file="$XDG_CACHE_HOME/wget-hsts""
# For those have not respected XDG Base Directory standard
alias w3m="HOME=$XDG_DATA_HOME/w3m w3m"
alias adb="HOME=$XDG_DATA_HOME/adb adb"
alias flutter="HOME=$XDG_DATA_HOME/flutter flutter"
alias dart="HOME=$XDG_DATA_HOME/dart dart"
alias railway="HOME=$XDG_DATA_HOME/railway railway"

alias dg="java -jar $HOME/p/ysyx-workbench/npc/resources/Digital/Digital.jar &"
#temp
alias te="python ok --local"

autoload -Uz compinit
compinit -d $XDG_CACHE_HOME/zsh/zcompdump-$ZSH_VERSION
zstyle ':completion:*' cache-path $XDG_CACHE_HOME/zsh/zcompcache

if [[ -a "$HOME/.xsession-errors" ]]; then
  rm $HOME/.xsession-errors
fi

if [[ -a "$HOME/.icons" ]]; then
  rm -rf $HOME/.icons
fi

if [[ -a "$HOME/.mozilla" ]]; then
  rm -rf $HOME/.mozilla
fi

if [[ -a "$HOME/.pki" ]]; then
  rm -rf $HOME/.pki
fi

if [[ -a "$HOME/.w3m" ]]; then
  rm -rf $HOME/.w3m
fi

if [[ -a "$HOME/.python_history" ]]; then
  rm $HOME/.python_history
fi

if [[ -a "$HOME/.yarnrc" ]]; then
  rm $HOME/.yarnrc
fi

if [[ -a "$HOME/.node_repl_history" ]]; then
  rm $HOME/.node_repl_history
fi

if [[ -a "$HOME/.wget-hsts" ]]; then
  rm $HOME/.wget-hsts
fi

if [[ -a "$HOME/.android" ]]; then
  rm -rf $HOME/.android
fi
# Start configuration added by Zim install {{{
#
# User configuration sourced by interactive shells
#

# -----------------
# Zsh configuration
# -----------------

#
# History
#

# Remove older command from the history if a duplicate is to be added.
setopt HIST_IGNORE_ALL_DUPS

#
# Input/output
#

# Set editor default keymap to emacs (`-e`) or vi (`-v`)
bindkey -e

# Prompt for spelling correction of commands.
setopt CORRECT

# Customize spelling correction prompt.
SPROMPT='zsh: correct %F{red}%R%f to %F{green}%r%f [nyae]? '

# Remove path separator from WORDCHARS.
WORDCHARS=${WORDCHARS//[\/]}

# -----------------
# Zim configuration
# -----------------

# Use degit instead of git as the default tool to install and update modules.
#zstyle ':zim:zmodule' use 'degit'

# --------------------
# Module configuration
# --------------------

#
# completion
#

# Set a custom path for the completion dump file.
# If none is provided, the default ${ZDOTDIR:-${HOME}}/.zcompdump is used.
#zstyle ':zim:completion' dumpfile "${ZDOTDIR:-${HOME}}/.zcompdump-${ZSH_VERSION}"

#
# git
#

# Set a custom prefix for the generated aliases. The default prefix is 'G'.
zstyle ':zim:git' aliases-prefix 'g'

#
# input
#

# Append `../` to your input for each `.` you type after an initial `..`
zstyle ':zim:input' double-dot-expand yes

#
# termtitle
#

# Set a custom terminal title format using prompt expansion escape sequences.
# See http://zsh.sourceforge.net/Doc/Release/Prompt-Expansion.html#Simple-Prompt-Escapes
# If none is provided, the default '%n@%m: %~' is used.
#zstyle ':zim:termtitle' format '%1~'

#
# zsh-autosuggestions
#

# Disable automatic widget re-binding on each precmd. This can be set when
# zsh-users/zsh-autosuggestions is the last module in your ~/.zimrc.
ZSH_AUTOSUGGEST_MANUAL_REBIND=1

# Customize the style that the suggestions are shown with.
# See https://github.com/zsh-users/zsh-autosuggestions/blob/master/README.md#suggestion-highlight-style
#ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=242'

#
# zsh-syntax-highlighting
#

# Set what highlighters will be used.
# See https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/docs/highlighters.md
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets)

# Customize the main highlighter styles.
# See https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/docs/highlighters/main.md#how-to-tweak-it
#typeset -A ZSH_HIGHLIGHT_STYLES
#ZSH_HIGHLIGHT_STYLES[comment]='fg=242'

# ------------------
# Initialize modules
# ------------------

ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim
if [[ ! -e ${ZIM_HOME}/zimfw.zsh ]]; then
  # Download zimfw script if missing.
  if (( ${+commands[curl]} )); then
    curl -fsSL --create-dirs -o ${ZIM_HOME}/zimfw.zsh https://github.com/zimfw/zimfw/releases/latest/download/zimfw.zsh
  else
    mkdir -p ${ZIM_HOME} && wget -nv -O ${ZIM_HOME}/zimfw.zsh https://github.com/zimfw/zimfw/releases/latest/download/zimfw.zsh
  fi
fi
if [[ ! ${ZIM_HOME}/init.zsh -nt ${ZDOTDIR:-${HOME}}/.zimrc ]]; then
  # Install missing modules, and update ${ZIM_HOME}/init.zsh if missing or outdated.
  source ${ZIM_HOME}/zimfw.zsh init -q
fi
source ${ZIM_HOME}/init.zsh

HISTSIZE=5000000000
SAVEHIST=5000000000
HISTFILE=$XDG_STATE_HOME/zsh/.histfile
# prevent history from duplicated entries
#setopt hist_ignore_all_dups
# ignore recording by manually add space
#setopt hist_ignore_space
#append into history file
#setopt INC_APPEND_HISTORY
#save only one command if 2 common are same and consistent
#setopt HIST_IGNORE_DUPS
#add timestamp for each entry
setopt EXTENDED_HISTORY          # Write the history file in the ":start:elapsed;command" format.
setopt INC_APPEND_HISTORY        # Write to the history file immediately, not when the shell exits.
unsetopt SHARE_HISTORY           # Cause all terminals to share the same history 'session', 隐含打开EXTENDED_HISTORY, INC_APPEND_HISTORY
# ------------------------------
# Post-init module configuration
# ------------------------------

#
# zsh-history-substring-search
#

# Bind ^[[A/^[[B manually so up/down works both before and after zle-line-init
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# Bind up and down keys
zmodload -F zsh/terminfo +p:terminfo
if [[ -n ${terminfo[kcuu1]} && -n ${terminfo[kcud1]} ]]; then
  bindkey ${terminfo[kcuu1]} history-substring-search-up
  bindkey ${terminfo[kcud1]} history-substring-search-down
fi

bindkey '^P' history-substring-search-up
bindkey '^N' history-substring-search-down
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down
# }}} End configuration added by Zim install

## FZF
source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh
typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet
# hist_filesize=$(stat -c%s "$XDG_STATE_HOME/zsh/.histfile")
# if [[ $hist_filesize -lt 64000 ]]; then
#     echo "History file is lower than 64 kbytes, restoring backup..."
#     cp -f $HOME/p/backup/zsh/.histfile $XDG_STATE_HOME/zsh/.histfile
# fi

# myfunction

clean_java() {
  rsync -a $HOME/.android/. $XDG_DATA_HOME/android --remove-source-files
  rm -rf $HOME/.android
  rm -rf $HOME/.gradle/caches/
  rsync -a $HOME/.gradle/. $XDG_DATA_HOME/gradle --remove-source-files
  rm -rf $HOME/.gradle
}

ytd() {
  url="$1"
  youtube-dl $url  --proxy "http://127.0.0.1:20171" --external-downloader aria2c --external-downloader-args "-s64 -x64 -j 3 -k 1M" --no-playlist
}
