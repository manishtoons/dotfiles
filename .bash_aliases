alias c=clear

# prints path from current directory 
# > lf .alias
# $HOME/.alias
function lf(){
  echo `pwd`/$1;
}

function rl(){
  # echo `readlink -f .` $1;
  echo `readlink -f $1`;

}


# 
alias aa="cd ~/workspaced/aa"


alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."



alias sas="source ~/.alias && echo Sourced .alias file"
alias sbs="source ~/.bashrc && echo Sourced .bashrc file"


