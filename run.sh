type rsync || { sudo apt-get update ; sudo apt-get install rsync; }

export exclude_parameters=""

for x in $WERCKER_COPY_TO_OUTPUT_EXCLUDE
do
    export exclude_parameters="$exclude_parameters --exclude=$x "
done

echo "rsync -rv --times $exclude_parameters $PWD/ $rsync"
rsync -rv --times $exclude_parameters "$PWD/" "$WERCKER_OUTPUT_DIR"
