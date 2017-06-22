#!/bin/sh
# deploy.sh
lftp -c "set ftps:initial-prot ''; set ftp:ssl-force true; set ftp:ssl-protect-data true; open ftp://$FTP_USER:$FTP_PASS@$FTP_HOST:21; mirror -eRv public .; quit;"
