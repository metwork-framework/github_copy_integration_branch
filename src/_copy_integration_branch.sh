#!/bin/bash

set -e

if test "${1:-}" = ""; then
  echo "usage: _copy_integration_branch.sh REPO-NAME"
  exit 1
fi

# Copy the integration branch into master

REPONAME=$1
TMPDIR=~/tmp/${REPONAME}.$$

rm -Rf "${TMPDIR}"
mkdir -p "${TMPDIR}"
cd "${TMPDIR}"
git clone "git@github.com:metwork-framework/${REPONAME}"
cd "${REPONAME}"
git reset --hard origin/integration
SHA=$(git rev-parse HEAD)
metwork_valid_merge_logic_status.py "${REPONAME}" "${SHA}"
git push -f origin master
rm -Rf "${TMPDIR}"

echo "DONE"
