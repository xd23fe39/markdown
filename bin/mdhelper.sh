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
  echo "     Pandoc compiler: $PANDOC_BIN"
  echo
}

function priv_init {
  echo; echo "Initialize current directory:"
  priv_dirinfo
  if [ ! -d "$CURRENT_DIR/.mdhelper" ]; then
    mkdir $CURRENT_DIR/.mdhelper
  fi
  if [ ! -d "$CURRENT_DIR/docs" ]; then
    mkdir $CURRENT_DIR/docs
  fi
  if [ ! -d "$CURRENT_DIR/html" ]; then
    mkdir $CURRENT_DIR/html
  fi
  cp -R $MDT_TEMPLATES/basic/docs $CURRENT_DIR
  cp -R $MDT_TEMPLATES/res $CURRENT_DIR/docs/res
  cp -R $MDT_TEMPLATES/res $CURRENT_DIR/html/res
  cp -R $MDT_TEMPLATES/stylesheets/* $CURRENT_DIR/html
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

  # STYLE_NAME="pandoc.css"
  STYLE_NAME="github-pandoc.css"


  echo; echo "Build HTML Output:"
  priv_dirinfo

  # Generiere die HTML-Ausgabedateien mit pandoc
	for i in $( ls $CURRENT_DIR/docs/*.md ); do
		FILENAME=$(basename $i .md)
		$PANDOC_BIN -s -S --toc -c "$CURRENT_DIR/html/$STYLE_NAME" $i -o "$CURRENT_DIR/html/$FILENAME.html"
		echo "   Compile: $i - RES: $?"
  done

	echo
  # Pascal Hertleif is author of pandoc.css: thanx for puplishing!
  # $PANDOC_BIN -s -S --toc -c "$CURRENT_DIR/html/pandoc.css" $CURRENT_DIR/docs/$1 -o "$CURRENT_DIR/html/`basename $1`.html"
}

function priv_initcheck {
  PANDOC_BIN="`which pandoc`"
  echo; echo -n "Init checkup: "
  if [ -x "$PANDOC_BIN" ]; then
    export PANDOC_BIN
  else
    echo; echo "Converter PANDOC not available!";
    exit 1
  fi
  echo "OK!"; echo
  return 0
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
    priv_initcheck
    priv_build $2 $3
    ;;
	usage|help|*)
		priv_usage
		;;
esac

exit 0

# EOL 2016 fe
