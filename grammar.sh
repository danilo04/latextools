BASEDIR=$(dirname $0)
echo $BASEDIR
cd /tmp
detex -n ${@:1} > out.txt && $BASEDIR/languagetools/languagetool.sh -d WHITESPACE_RULE  out.txt
