# How to update the hash file

git clone ORG/omegat-user-config-dev573
cd omegat-user-config-dev573
find * -type f -exec md5sum {} \; > remote.md5
