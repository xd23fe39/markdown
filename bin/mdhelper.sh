#MARKDOWN Helper Tool

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

# Aktuelles Verzeichnis
CURRENT_DIR="`pwd`"

# pandoc Dokumentenkonverter
PANDOC_BIN="`which pandoc`"

# Markdown document templates
MDT_TEMPLATES="$BASEDIR/templates"

function priv_dirinfo {
  echo
  echo "   Current directory: $CURRENT_DIR"
  echo "          Script Dir: $SCRIPT_DIR"
  echo
}

function priv_init {
  echo; echo "Initialize current directory:"
  priv_dirinfo
  cp -R $MDT_TEMPLATES/basic/* $CURRENT_DIR
  cp -R $MDT_TEMPLATES/basic/res $CURRENT_DIR/docs/res
  cp -R $MDT_TEMPLATES/basic/res $CURRENT_DIR/html/res
  cp -R $MDT_TEMPLATES/basic/.gitignore $CURRENT_DIR/
  echo; echo "Completed!"
  exit 0
}

function priv_usage {
  echo
  echo "MARKDOWN Helper Version 1.0"
  echo
  echo "  Usage: mdhelper init|status|build"
  if [ -x "$PANDOC_BIN" ]; then
    echo; echo "  Document converter tool: $PANDOC_BIN"
  fi
  echo
  exit 0
}

function priv_build {
  echo; echo "Build HTML Output:"
  priv_dirinfo

  # Kopiere zentrales Ressource-Verzeichnis in Zielordner
  cp -R $MDT_TEMPLATES/basic/res $CURRENT_DIR/html/res

  # Generiere die HTML-Ausgabedateien mit pandoc
	for i in $( ls $CURRENT_DIR/docs/*.md ); do
		FILENAME=$(basename $i .md)
		$PANDOC_BIN -s -S --toc -c "$CURRENT_DIR/html/pandoc.css" $i -o "$CURRENT_DIR/html/$FILENAME.html"
		echo "   Compile: $i - RES: $?"
  done

	echo
  # Pascal Hertleif is author of pandoc.css: thanx for puplishing!
  # $PANDOC_BIN -s -S --toc -c "$CURRENT_DIR/html/pandoc.css" $CURRENT_DIR/docs/$1 -o "$CURRENT_DIR/html/`basename $1`.html"
}

#####################################################################
# MAIN Program
COMMAND=$1
OPTION=$2
case "$COMMAND" in
  init)
    priv_init
    ;;
  build)
    priv_build $2 $3
    ;;
	usage|help|*)
		priv_usage
		;;
esac

exit 0

# EOL 2016 fe
