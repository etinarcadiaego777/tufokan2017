#!/bin/sh
# deploy.sh
set -e

# deployment via ftp upload. Using FTPS for that
sudo apt-get install -y lftp
lftp -c "open ftp://$FTP_USER:$FTP_PASS@$FTP_HOST:21; mirror -eRv public .; quit;"
