#!/usr/bin/env bash

files="customisation.properties version_notes.txt scripts/application_startup/updateConfigBundle.groovy scripts/updateConfigBundle.groovy changes.md"


for file in $files
do
	perl -pi -e 's~(?<=https://cat.capstan.be/OmegaT/v)572(?=/index.php)~573_test~g' $file
done

text="# HOW-TO:\r\n\r\nThis is the testing version of https://github.com/capstanlqc/omegat-user-config-dev572.\r\n\r\nSteps:\r\n\r\n1. Sync with latest version of that repo (copy all files from there), but do not delete bash script 'change_572_url_to_573_test.sh'.\r\n2. Then make the required changes in dev573 (this repo)\r\n3. Last, run 'bash change_572_url_to_573_test.sh' from inside this repo to restore the testing customization url in all places.\r\n4. Push changes and deploy to testers.\r\n\r\nThen go to /var/www/capps/cat/OmegaT/v573_test in Ur and run:\r\n\r\nsudo bash omegat_github_updater.sh\r\n\r\nto share the customized configuration with users."

echo -e $text > README.md
