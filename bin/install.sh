#!/bin/bash -eu

mkdir -p ${HOME}/.config
git clone https://github.com/regashia/backends.git ${HOME}/.config/backends

ln -sf ${HOME}/.config/backends/bin/backends /usr/local/bin
