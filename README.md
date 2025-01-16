# HOW-TO:

This is the testing version of https://github.com/capstanlqc/omegat-user-config-dev572.

Steps:

1. Sync with latest version of that repo (copy all files from there), but do not delete bash script 'change_572_url_to_573_test.sh'.
2. Then make the required changes in dev573 (this repo)
3. Last, run 'bash change_572_url_to_573_test.sh' from inside this repo to restore the testing customization url in all places.
4. Push changes and deploy to testers.

Then go to /var/www/capps/cat/OmegaT/v573_test in Ur and run: 

sudo bash omegat_github_updater.sh

to share the customized configuration with users.