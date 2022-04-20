#!/bin/zsh

cp ~/.local/state/zsh/.histfile ~/p/backup/zsh/.histfile
cd ~/p/backup/zsh
cat zsh_history_$(date +\%Y_\%m_\%d_)*.bak .histfile .hist | sort | uniq > .hist
cp .hist ~/.local/state/zsh/.histfile
