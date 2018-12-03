#!/bin/bash

REPOS=$(metwork_repos.py --minimal-level=4)
for REPO in ${REPOS}; do
    _copy_integration_branch.sh "${REPO}"
done
