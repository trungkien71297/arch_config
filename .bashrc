#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
neofetch
fish
# alias dolphin
# alias dolphin='dolphin -stylesheet /home/trungkien71297/.config/qt5ct/qss/qssdolphin_bg_fix.qss'

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/trungkien71297/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/trungkien71297/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/trungkien71297/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/trungkien71297/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

