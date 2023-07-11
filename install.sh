#!/bin/bash

install() {
    echo "Linking ${1}"
    ln "$(pwd)/${1}" "${HOME}/.${1}"
}

install emacs
install gitconfig
