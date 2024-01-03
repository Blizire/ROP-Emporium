#!/bin/sh

# Probably a one time use script
# I've already sorted all the challenges by
# architecture and made the corresponding
# folders.

# For usage call the script and it will unzip all
# all the challenges for each architecture and
# put the corresponding challenges in their
# own directories

for challenge in */*.zip; do
	# list all the zips we are going to be operating on
	echo "File -> $challenge"

	# foreach zip need to make a directory without the exentension
	dir_name="${challenge%.*}"
	echo "Creating Dir -> $dir_name"
	mkdir $dir_name

	# unzip into corresponding directories
	echo "Unzipping $challenge -> $dir_name"
	unzip $challenge -d $dir_name
done
