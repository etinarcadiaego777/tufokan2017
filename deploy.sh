#!/bin/sh
# deploy.sh
lftp -c "open ftp://$FTP_USER:$FTP_PASS@$FTP_HOST:21; mirror -eRv public .; quit;"
