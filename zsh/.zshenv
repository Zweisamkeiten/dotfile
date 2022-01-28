export EDITOR="lvim"

export GEM_HOME="$(ruby -e 'puts Gem.user_dir')"
export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:/usr/bin:$PATH
export PATH="$PATH:$GEM_HOME/bin"

export XINITRC="$XDG_CONFIG_HOME/X11/xinitrc"
export XSERVERRC="$XDG_CONFIG_HOME/X11/xserverrc"
export HISTFILE="$XDG_DATA_HOME/bash/history"
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export GTK_RC_FILES="$XDG_CONFIG_HOME/gtk-1.0/gtkrc"
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc"
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export HISTFILE="$XDG_STATE_HOME"/zsh/history
export GVIMINIT='let $MYGVIMRC="$XDG_CONFIG_HOME/vim/gvimrc" | source $MYGVIMRC'
export VIMINIT='let $MYVIMRC="$XDG_CONFIG_HOME/vim/vimrc" | source $MYVIMRC'
export GOPATH="$XDG_DATA_HOME"/go
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc
export NPM_CONFIG_CACHE=$XDG_CACHE_HOME/npm
export NPM_CONFIG_TMP=$XDG_RUNTIME_DIR/npm

export GEM_HOME="$XDG_DATA_HOME"/gem
export GEM_SPEC_CACHE="$XDG_CACHE_HOME"/gem
export GEMRC="$XDG_CONFIG_HOME/gem/gemrc"

# zplug
export ZPLUG_HOME="$XDG_CONFIG_HOME/zsh/zplug"

# For those have not respected XDG Base Directory standard
#alias firefox-developer-edition="HOME=$XDG_DATA_HOME/firefoxdeveloperedition firefox-developer-edition"
#alias chromium="HOME=$XDG_DATA_HOME/chromium chromium"
