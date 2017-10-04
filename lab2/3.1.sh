#!/bin/sh

test -n "$TMPDIR" &&
save_dir="$TMPDIR" ||
save_dir="/tmp" 

[ "$#" -eq 0 ] &&
{ ls $TMPDIR; exit 0; }

# Often you will want to timestamp shell generated files E.g backups and logs
file_name=`mktemp $save_dir/temp_file_$(date "+%Y-%m-%d-%H-%M-%S").XXXXXX` ||
exit 1

"$@" >$file_name 2>&1

exit_code=$?

echo "Created temp file: $file_name"

exit $exit_code
