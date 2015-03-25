#!/bin/sh

# Make some symlinks, so that we can use Quick in Xcode Playgrounds

# From: http://stackoverflow.com/questions/3915040/bash-fish-command-to-print-absolute-path-to-a-file
get_abs_filename() {
  echo "$(cd "$(dirname "$1")" && pwd)/$(basename "$1")"
}

SDK_PATH="`xcrun --show-sdk-path`"
FRAMEWORKS_PATH="$SDK_PATH/../../Library/Frameworks"
AUX="$TMPDIR/com.apple.dt.Xcode.pg/auxiliarymodules"

IFS=$'\n'
for pg in `ls -d $AUX/*`
do
	for framework in `ls -d $(dirname $0)/vendor/Rome/*`
	do
		ln -sf `get_abs_filename $framework` $pg
	done

	ln -sf $FRAMEWORKS_PATH/XCTest.framework $pg
done
