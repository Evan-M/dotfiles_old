
###################################################
# Non-login related bash initializations go here. #
###################################################

# Set up python virtualenvs and virtualenvwrapper
if [ -d "$HOME/virtualenvs" ]; then
  export WORKON_HOME=~/virtualenvs
fi
if command -v virtualenvwrapper &>/dev/null; then
  source $(which virtualenvwrapper.sh)
fi

# Add rbenv to the path:
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Customize the bash prompt
export RUBY_VERSION_IN_PROMPT=true
if [ -f "$HOME/.bash_prompt" ]; then
  source "$HOME/.bash_prompt"
fi

# Set the default editor to vim
export EDITOR=vim

# Set up some nicities for bash history
export HISTCONTROL=ignoredups
shopt -s histappend
PROMPT_COMMAND='history -a'

# Add some bash aliases
if [ -f "$HOME/.bash_aliases" ]; then
  source "$HOME/.bash_aliases"
fi

function authme {
  ssh $1 'cat >>.ssh/authorized_keys' <~/.ssh/id_rsa.pub
}
