#!/bin/zsh

cp ~/.local/state/zsh/.histfile ~/p/backup/zsh/.histfile
cd ~/p/backup/zsh
cat zsh_history_$(date +\%Y_\%m_\%d_)*.bak .histfile .hist | sort | uniq > .hist
rg --invert-match '0;(ls|htop|ht|tldr|phone|cd|lg|ra|s|c|la|ll|lvim|hi|ef|vf|zsh|e|fzf|\\|evim|vim|make|cl|\.\.|\.|cd \-|hi|zsh_history\.sh|.*\\)$' .hist > .hist1
cp .hist1 ~/.local/state/zsh/.histfile
