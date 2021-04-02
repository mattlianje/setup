#!/bin/bash

source which-os

case $PLATFORM in
  debian*)
    sudo apt-get install wireshark
    ;;

  darwin*)
    brew install --cask wireshark
    ;;

  *)
    log_error "OS not supported"
    exit 1
    ;;

esac

