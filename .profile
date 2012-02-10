
###################################################
# Non-bash related login initializations go here. #
###################################################

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
  export PATH="$HOME/bin:$PATH"
fi



