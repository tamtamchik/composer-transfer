#!/usr/bin/env bash

describe "Composer Transfer Tests"

it_displays_usage() {
  usage=$(./transfer | head -n 3)
  test "$usage" = "No arguments specified.
Usage: ./transfer target
    target - filename or directory to upload."
}

it_check_for_file_not_found() {
  usage=$(./transfer dummy | head -n 1)
  test "$usage" = "File dummy doesn't exists."
}

it_check_sigle_file_upload() {
  usage=$(touch testfile.txt && ./transfer testfile.txt | head -n 1)
  rm testfile.txt;
  found=0;
  if [[ $usage == *"/testfile.txt"* ]]
  then
    found=1;
  fi
  test $found = 1
}
