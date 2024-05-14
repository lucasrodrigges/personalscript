#!/bin/bash
sudo rm -f /var/lib/dpkg/lock-frontend
sudo rm -f /var/cache/apt/archives/lock

cd ~/Documents/Benvo
git clone git@github.com:senioramais/benvo-ops.git
git clone git@github.com:senioramais/benvo-family.git
git clone git@github.com:senioramais/afarma-frontend.git
git clone git@github.com:senioramais/afarma-api.git
git clone git@github.com:senioramais/benvo-documentation.git

cd ~/Documents/BFDB
git clone git@github.com:bfdb-org/bfdb-lp.git
git clone git@github.com:bfdb-org/bfdb-notifications.git
git clone git@github.com:bfdb-org/bfdb-tutor.git
git clone git@github.com:bfdb-org/bfdb-ops.git