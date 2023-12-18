if [ "$#" -ne 2 ]; then
    echo "invalid number of parameters"
    exit 1
fi

WRITE_FILE=$1
STRING=$2

mkdir -p $(dirname $WRITE_FILE)
touch $WRITE_FILE
echo $STRING >> $WRITE_FILE