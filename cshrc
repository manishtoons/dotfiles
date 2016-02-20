# source global definitions
if ( -f /etc/tcshrc ) then
        . /etc/tcshrc
endif


if ($?prompt) then
    set quiet
    #echo "[source ~$USER/.tcshrc]"
    #stty erase ^?
endif

setenv USERNAME $USER
setenv PATH $HOME/workspace/utilities:$HOME/bin/:${PATH}

# PACKAGE_ROOT_PATH
setenv PACKAGE_ROOT $HOME/workspace

# set PYTHONPATH here


# setting the following line to enhance
# #  1) ignores case and 2) considers periods,  hyphens
# #       and  underscores  (`.', `-' and `_') to be word separators
# #       and hyphens and underscores to be equivalent
set complete=enhance

# auto correct commands
# cmd - commands are automatically spelling-corrected
# complete - commands are automatically completed
# all - the entire command line is corrected
set correct=cmd

# List all suspended jobs
set listjobs=long

# Shell announces job completions asynchronously
# echo "setting history.."
set history=200
set savehist=100
set ignoreeof
set notify
set rmstar=on

setenv PAGER "more"
setenv QAGER "more -c"

# Enhance vi editor
setenv EDITOR "vim"

#echo "settingup aliases and short-hands"
# User specific aliases and functions
source "$HOME/.alias"
source "$HOME/git-completion.tcsh"

# sweetness of VIM
bindkey -v

# echo "setting hotkeys"
bindkey -k up "history-search-backward"
bindkey -k down "history-search-forward"
bindkey "^p" "history-search-backward"
bindkey "^n" "history-search-forward"
bindkey "^a" "vi-cmd-mode-complete"

# lets make stupid setof keys which acts weird with vi
if($term == "xterm" || $term == "vt100" || $term == "vt102" || $term !~ "con*") then
        bindkey "\e[1~" "beginning-of-line" # home
        bindkey "\e[7~" "beginning-of-line" # home rxvt
        bindkey "\e[2~" "overwrite-mode"    # Ins
        bindkey "\e[3~" "delete-char"           # Delete
    bindkey "\e[4~" "end-of-line"               # End
        bindkey "\e[8~" "end-of-line"           # End rxvt
endif

# design our prompt here..
# we would love to see current branch in prompt

# for bing repos gettting most of the info from git can be laggish, it effects
# our work, so set env which tells get_git_branch.py to track branch or not,
# this will disable tacking but it will still show branch name
setenv DISABLE_GIT_TRACKING

# for bold -- alias __git_current_branch 'git rev-parse --abbrev-ref
setxkbmap -model pc101 us,us
