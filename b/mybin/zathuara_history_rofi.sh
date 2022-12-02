#!/bin/bash
# see https://unix.stackexchange.com/questions/467524/open-file-from-history-in-zathura

# save filepaths in history to array, reverse  order
readarray -t Data < <(grep -o '/.*\.[[:alpha:]]\{,3\}'  ~/.local/share/zathura/history | tac)

# loop and unset not existing files
for i in "${!Data[@]}"
do
    if ! [ -e "${Data[$i]}" ]; then
        # echo "${Data[$i]} does not exist."
        unset 'Data[$i]'
    # else
## Add substitition $HOME with ~ , really slow
    #     Data[$i]=$(echo ${Data[$i]} | sed "s#$HOME#~#")
    #     # echo "${Data[$i]} exists."
    fi
done
dir="$HOME/.config/rofi/launchers/type-1"
theme='style-6'
selected=$( ( IFS=$'\n'; echo "${Data[*]}" ) | rofi -width 95 -dmenu -i -markup-rows -theme "${dir}/${theme}.rasi")


# exit if nothing is selected
[[ -z $selected ]] && exit

# prevent opening not existing file 
if [ -f "$selected" ]; then
    # echo "$selected exists."
    nohup zathura "$selected" </dev/null >/dev/null 2>&1 &
else 
    # echo "$selected does not exist."
    exit
fi

exit 0
