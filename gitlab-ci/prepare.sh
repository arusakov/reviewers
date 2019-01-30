#!/bin/sh

git checkout -b reviewers-$CI_JOB_ID
git checkout $CI_MERGE_REQUEST_TARGET_BRANCH_NAME
git pull origin $CI_MERGE_REQUEST_TARGET_BRANCH_NAME
git checkout reviewers-$CI_JOB_ID
