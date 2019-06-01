#!/bin/bash

# get a list of staged .py files
staged=$(git diff --name-only --cached | grep -o '.*.py$')

# check with flake8
flake8 $staged
