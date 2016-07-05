#!/usr/bin/env bash

describe "Compoer Transfer"

it_displays_usage() {
  usage=$(./transfer | head -n 3)
  test "$usage" = "No arguments specified.
Usage: ./transfer target
    target - filename or directory to upload"
}
