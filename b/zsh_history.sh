#!/bin/zsh

cp ~/.local/state/zsh/.histfile ~/p/backup/zsh/.histfile
cd ~/p/backup/zsh
cat zsh_history_$(date +\%Y_\%m_\%d_)*.bak .histfile .hist | sort | uniq > .hist
rg --invert-match '0;(ls|tldr|phone|cd|lg|ra|s|c|la|ll|lvim|history|ef|vf|zsh|e|fzf|\\|evim|vim|make|colemak|\.\.|\.|cd \-|hi|zsh_history\.sh)$' .hist > .hist1
cp .hist1 ~/.local/state/zsh/.histfile
