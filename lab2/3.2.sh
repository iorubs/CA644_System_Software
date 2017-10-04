#!/bin/sh

# Often you will want to timestamp shell generated files E.g backups and logs
file_name=`mktemp temp_cronix_$(date "+%Y-%m-%d-%H-%M-%S").XXXXXX` ||
exit 1

"$@" >$file_name 2>&1

exit_code=$?

[ "$exit_code" -ne "0" ] &&
cat $file_name

rm $file_name &&
exit $exit_code
