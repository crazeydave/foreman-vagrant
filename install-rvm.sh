 #!/usr/bin/env bash

 command curl -sSL https://rvm.io/mpapis.asc | sudo gpg2 --import -
 
 curl -sSL https://get.rvm.io | bash -s $1