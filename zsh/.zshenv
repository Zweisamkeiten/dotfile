export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

export EDITOR="vim"

export GEM_HOME="$(ruby -e 'puts Gem.user_dir')"
export PATH=$HOME/c/b:$HOME/.local/bin:/usr/local/bin:/usr/bin:$PATH
export PATH="$PATH:$GEM_HOME/bin"
export PATH="/usr/lib/ccache/bin:$PATH"

export XINITRC="$XDG_CONFIG_HOME/X11/xinitrc"
export XSERVERRC="$XDG_CONFIG_HOME/X11/xserverrc"
# export HISTFILE="$XDG_DATA_HOME/bash/history"
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export GTK_RC_FILES="$XDG_CONFIG_HOME/gtk-1.0/gtkrc"
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc"
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export HISTFILE="$XDG_STATE_HOME"/zsh/.histfile
export GVIMINIT='let $MYGVIMRC="$XDG_CONFIG_HOME/vim/gvimrc" | source $MYGVIMRC'
export VIMINIT='let $MYVIMRC="$XDG_CONFIG_HOME/vim/vimrc" | source $MYVIMRC'
export GOPATH="$XDG_DATA_HOME"/go
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc
export NPM_CONFIG_CACHE=$XDG_CACHE_HOME/npm
export NPM_CONFIG_TMP=$XDG_RUNTIME_DIR/npm

export GEM_HOME="$XDG_DATA_HOME"/gem
export GEM_SPEC_CACHE="$XDG_CACHE_HOME"/gem
export GEMRC="$XDG_CONFIG_HOME/gem/gemrc"
export WGETRC="$XDG_CONFIG_HOME/wget/wgetrc"

# zplug
export ZPLUG_HOME="$XDG_CONFIG_HOME/zsh/zplug"

# zsh-z
export ZSHZ_DATA="$XDG_CONFIG_HOME/zsh/.zhist"

# doom
export DOOMDIR="$XDG_CONFIG_HOME/doom"

# adb .android
export ANDROID_SDK_ROOT="$XDG_DATA_HOME/android"
export ANDROID_EMULATOR_HOME="$XDG_DATA_HOME/android"
export ANDROID_SDK_HOME="$XDG_DATA_HOME/android"
# For those have not respected XDG Base Directory standard
#alias firefox-developer-edition="HOME=$XDG_DATA_HOME/firefoxdeveloperedition firefox-developer-edition"
#alias chromium="HOME=$XDG_DATA_HOME/chromium chromium"

export NEMU_HOME=/home/einsam/p/ics2021/nemu
export AM_HOME=/home/einsam/p/ics2021/abstract-machine

export JAVA_HOME='/usr/lib/jvm/java-8-openjdk'
export PATH=$JAVA_HOME/bin:$PATH

# flutter mirror
export FLUTTER_SDK="/opt/flutter/bin/"
export FLUTTER_STORAGE_BASE_URL="https://mirrors.tuna.tsinghua.edu.cn/flutter"
export PUB_HOSTED_URL="https://mirrors.tuna.tsinghua.edu.cn/dart-pub"
export CHROME_EXECUTABLE="/usr/bin/chromium"

export ANDROID_SDK_ROOT='/opt/android-sdk'
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools/
export PATH=$PATH:$ANDROID_SDK_ROOT/tools/bin/
export PATH=$PATH:$ANDROID_ROOT/emulator
export PATH=$PATH:$ANDROID_SDK_ROOT/tools/

export PUB_CACHE="$XDG_CACHE_HOME/pub"

export GRADLE_USER_HOME="$XDG_DATA_HOME"/gradle

# jupyter
export JUPYTER_CONFIG_DIR="$XDG_CONFIG_HOME"/jupyter

export GDBHISTFILE="$XDG_DATA_HOME"/gdb/history

# bundle
 export BUNDLE_USER_CONFIG="$XDG_CONFIG_HOME"/bundle
 export BUNDLE_USER_CACHE="$XDG_CACHE_HOME"/bundle
 export BUNDLE_USER_PLUGIN="$XDG_DATA_HOME"/bundle

 # ruby-solargraph
 export SOLARGRAPH_CACHE=$XDG_CACHE_HOME/solargraph

 # .mysql_history
  export MYSQL_HISTFILE=$XDG_DATA_HOME/mysql_history
