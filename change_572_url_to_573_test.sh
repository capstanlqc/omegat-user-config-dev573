#!/usr/bin/env bash

files="customisation.properties version_notes.txt scripts/application_startup/updateConfigBundle.groovy scripts/updateConfigBundle.groovy changes.md"


for file in $files
do
	perl -pi -e 's~(?<=https://cat.capstan.be/OmegaT/v)572(?=/index.php)~573_test~g' $file
done



