
if [ "$#" -ne 2 ]; then
    echo "invalid number of parameters"
    exit 1
fi

FILES_DIR=$1
SEARCH_STR=$2

if [ ! -d $FILES_DIR ]; then
    echo $FILES_DIR "is not a valid directory"
    exit 1
fi

echo "The number of files are $(ls $FILES_DIR | wc -l) and the number of matching lines are $(grep -r $SEARCH_STR $FILES_DIR*  | wc -l)"