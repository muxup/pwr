#!/bin/sh

die () {
  printf "%s\n" "$*" >&2
  exit 1
}

isort --profile black -c pwr || die "isort found issues"
black --check pwr || die "black reports build.py needs reformatting"
flake8 --max-line-length 88 --extend-ignore=E203,E266,E302,E501,W291 pwr || die "flake8 found issues"
