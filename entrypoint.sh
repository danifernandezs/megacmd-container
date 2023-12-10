#!/bin/bash 

command=$1

case $command in
  signup | SignUp )
    cd /opt/scripts && \
    ./signup.sh ;;

  list | ls )
    cd /opt/scripts && \
    ./list.sh ;;

  clean )
    cd /opt/scripts && \
    ./clean.sh ;;

  upload )
    cd /opt/scripts && \
    ./upload.sh ;;

  download )
    cd /opt/scripts && \
    ./download.sh ;;

  upgrade )
    cd /opt/scripts && \
    ./upgrade.sh ;;

  psa )
    cd /opt/scripts && \
    ./psa.sh ;;

  tree )
    cd /opt/scripts && \
    ./tree.sh ;;

  * | help )
    echo "========================================"
    echo "  Command list:"
    echo "    - signup         : SignUp the email and password provided, random Name and Surname"
    echo "    - list           : List all mega account content"
    echo "    - tree           : tree file content"
    echo "    - clean          : Clean all account (Delete all content)"
    echo "    - upload         : Upload all, inside /tmp/files"
    echo "    - download       : Download all content, to /tmp/files"
    echo "    - upgrade        : Update last date usage, Upload file and re-delete"
    echo "    - psa            : Discard psa message"
    echo "========================================"
    ;;

esac
