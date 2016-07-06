#!/usr/bin/env bash

describe "Composer Transfer Tests"

# Display warning and usage when no file is specified.
it_displays_warning() {
  usage=$(./transfer | head -n 1);
  test "$usage" = "No arguments specified.";
}

# Display warning when file does not exists.
it_check_for_file_not_found() {
  usage=$(./transfer dummy | head -n 1);
  test "$usage" = "File dummy doesn't exists.";
}

# Generic single file wrokflow.
it_check_sigle_file_upload() {
  usage=$(echo 'upload' > testfile.txt && ./transfer testfile.txt | head -n 1);
  rm testfile.txt;
  curl -0 $usage > downloaded.txt;
  test `cat downloaded.txt` = 'upload';
  rm downloaded.txt;
}

# Pipeline single file wrokflow.
it_should_work_with_pipe() {
  usage=$(echo 'pipeline' > testfile.txt && cat testfile.txt | ./transfer newname.txt | head -n 1);
  rm testfile.txt;
  curl -0 $usage > downloaded.txt;
  test `cat downloaded.txt` = 'pipeline';
  rm downloaded.txt;
}

# Pipeline single file wrokflow.
it_should_work_with_pipe() {
  mkdir test;
  echo 'ziptest' > test/test.txt;
  usage=$(./transfer test | head -n 1);
  rm -rf test;
  curl -0 $usage > downloaded.zip;
  unzip downloaded.zip;
  test `cat test/test.txt` = 'ziptest';
  rm -rf test downloaded.zip;
}
