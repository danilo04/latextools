BASEDIR=$(dirname $0)
for f in "${1}/"*.tex
do
    echo "-------------------Checking file ${f}-------------------"
    echo "grammar: "
    $BASEDIR/grammar.sh $f
    echo 
    echo "weasel words: "
    $BASEDIR/weasel.sh $f
    echo
    echo "passive voice: "
    $BASEDIR/passive.sh $f
    echo
    echo "duplicates: "
    $BASEDIR/duplicate.sh $f
    echo 
done
