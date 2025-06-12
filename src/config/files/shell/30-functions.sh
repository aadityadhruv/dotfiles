#!/bin/bash

get_date() {
  date +'%Y-%m-%d'
}

notebook() {
  NEW=0
  NOTEBOOK=$1
  while getopts 'ln:' flag; do
    case "${flag}" in
      l) ls -1 ~/Notes
         return 0
         ;;
      n) NEW=1
        NOTEBOOK=${OPTARG}
        ;;
      *) echo "Invalid flag!" && return 1 ;;
    esac
  done
  if [[ $NEW == 1 && -z "$NOTEBOOK" ]]; then
    echo "No notebook name passed!"
    return 1
  fi
  if [[ $NEW == 1 ]]; then
    mkdir -p $HOME/Notes/$NOTEBOOK
  fi
  if [[ -z "$NOTEBOOK" ]]; then
    pushd $HOME/Notes
    vi $(find . -type f)
    popd
  elif [[ ! -z "$NOTEBOOK" ]]; then
    if [[ ! -d "${HOME}/Notes/${NOTEBOOK}" ]]; then
      echo "No notebook called "$NOTEBOOK"!"
    else
      pushd $HOME/Notes/$NOTEBOOK
      vi $(find . -type f)
      popd
    fi
  fi
}
