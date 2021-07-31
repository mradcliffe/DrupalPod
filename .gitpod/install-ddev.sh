#!/bin/sh -e
#
# Installs ddev using homebrew for testing.
#

sudo apt-get install -y -qq build-essential procps curl file git

# From drud/quicksprint.
if [ ! -d /home/linuxbrew/.linuxbrew/bin ]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh")
fi

echo "export PATH=/home/linuxbrew/.linuxbrew/bin:$PATH" >>~/.bashrc

. ~/.bashrc

brew update
brew install mkcert drud/ddev/ddev


