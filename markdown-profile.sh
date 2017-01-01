####################################################
# MYBACKUP Profile Script
####################################################

# Settings
COMMAND_NAME="markdown-helper.sh"
COMMAND_ALIAS="mdt"

# Try to set up COMMAND_HOME
if [ -f "./bin/$COMMAND_NAME" ]; then
  export COMMAND_HOME="`pwd`"
elif [ -x "$HOME/bin/$COMMAND_NAME" ]; then
  export COMMAND_HOME="$HOME"
else
  echo "Initialization failure!"
  return 2
fi

# Add a new Alias
if [ -x "$COMMAND_HOME/bin/$COMMAND_NAME" ]
then
  alias $COMMAND_ALIAS="$COMMAND_HOME/bin/$COMMAND_NAME"
  echo "$COMMAND_ALIAS is ready on: $COMMAND_HOME."
else
  echo "$COMMAND_ALIAS: Initialization failure!"
  return 3
fi

# Add COMMAND_HOME/bin to PATH
export PATH="$PATH:$COMMAND_HOME/bin"

# Exit code 0 (OK)
echo
return 0
