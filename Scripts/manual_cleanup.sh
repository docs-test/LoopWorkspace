#!/bin/zsh

# This script deletes temporary files and directories created during the translation process
# You must be in the LoopWorkspace folder

# ensure you really want to do this before executing with:
# ./Scripts/manual_cleanup.sh

set -e
set -u

source Scripts/define_common.sh

section_divider
echo "You are running ${0}"
echo "  Be sure you are completely done with the translation process"
echo "  or that you want to discard all your work to date"
echo
echo " /////////// WARNING ///////////"
echo
echo " This deletes the xclocs, xliff_in, xliff_out folders"
echo " This deletes the file, ${MESSAGE_FILE}, with the lokalise download timestamp"

continue_or_quit ${0}

rm -rf xclocs
rm -rf xliff_in
rm -rf xliff_out
rm "${MESSAGE_FILE}"

section_divider
echo "Temporary folders and ${MESSAGE_FILE} removed from LoopWorkspace"
section_divider
