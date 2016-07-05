#!/usr/bin/env bash

describe "Composer Transfer Tests"

# Display warning and usage when no file is specified.
it_displays_warning() {
  usage=$(./transfer | head -n 1)
  test "$usage" = "No arguments specified."
}

# Display warning when file does not exists.
it_check_for_file_not_found() {
  usage=$(./transfer dummy | head -n 1)
  test "$usage" = "File dummy doesn't exists."
}

# Generic single file wrokflow.
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

# Pipeline single file wrokflow.
it_should_work_with_pipe() {
  usage=$(touch testfile.txt && cat testfile.txt | ./transfer newname.txt | head -n 1)
  rm testfile.txt;
  found=0;
  if [[ $usage == *"/newname.txt"* ]]
  then
    found=1;
  fi
  test $found = 1
}
