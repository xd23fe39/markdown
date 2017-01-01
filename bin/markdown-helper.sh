#MARKDOWN Helper

# SCRIPT_DIR setzen
SCRIPT_DIR="`dirname $0`"

# SCRIPT_DIR setzen
SCRIPT_NAME="`basename $0`"

# BASEDIR setzen
BASEDIR="`dirname $0`/.."

# Hostname/Nodename holen
HOSTNAME=$(hostname)

# Script directory, eg. /this/is/your/app/bin
script_dir=`dirname $0`

# pnadoc Dokumentenkonverter
PANDOC_BIN="`which pandoc`"

function priv_init {
  echo
  echo "Script Dir: $SCRIPT_DIR"
  echo
}

function priv_usage {
  echo
  echo "MARKDOWN Helper Version 1.0"
  echo
  echo "  Usage: markdown-helper init 'Titel des Dokumentes'"
  if [ -x "$PANDOC_BIN" ]; then
    echo; echo "  Document converter tool: $PANDOC_BIN"
  fi
  echo
  exit 0
}

#####################################################################
# MAIN Program
COMMAND=$1
OPTION=$2
case "$COMMAND" in
  init)
    priv_init
    ;;
	usage|help|*)
		priv_usage
		;;
esac

exit 0

# EOL 2016 fe
