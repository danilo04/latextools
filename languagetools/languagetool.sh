BASEDIR=$(dirname $0)
/opt/java7/jdk1.7.0_21/bin/java -jar $BASEDIR/languagetool-commandline.jar "${@:1}"
