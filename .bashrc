# startup virtualenv-burrito
if [ -f $HOME/.venvburrito/startup.sh ]; then
    . $HOME/.venvburrito/startup.sh
fi

# nvm
export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

# git completion for bash
if [ -f $HOME/.git-completion.bash ]; then
    . $HOME/.git-completion.bash
fi

# pyenv
if command -v pyenv 1>/dev/null 2>&1; then
    eval "$(pyenv init -)"
fi

function reload() {
    echo -n "Sourcing .bashrc..."
    source ~/.bashrc;
    echo " Done"
}

function my_upgrade() {
    echo -n "Getting latest git completions..."
    wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -O $HOME/.git-completion.bash > /dev/null 2>&1;
    echo " Done"

    echo -n "Updating brew..."
    brew update > /dev/null 2>&1;
    echo " Done"

    echo -n "Upgrading nvm..."
    brew upgrade nvm > /dev/null 2>&1;
    echo " Done"

    echo -n "Upgrading pyenv..."
    brew upgrade pyenv > /dev/null 2>&1;
    echo " Done"

    reload;
}

# ???
PATH=$PATH:/Users/msabourin/.local/bin

GREEN="\[$(tput setaf 2)\]"
RESET="\[$(tput sgr0)\]"

function _get_current_branch() {
    echo `git branch 2> /dev/null | grep '*' | cut -d ' ' -f 2`
}

function _branch() {
    branch=`_get_current_branch`
    if [[ -n $branch ]]; then
        echo "🌱  [$branch]"
    else
        echo ""
    fi
}

function _time() {
    echo "🕒  (\t)"
}

function _me() {
    echo "🕴️  \u"
}

function _dir() {
    echo "🏠  \W/"
}

export PS1="`_time` `_me` `_dir` `_branch`  💵  > "
export CLICOLOR=1
