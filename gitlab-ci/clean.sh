#!/bin/sh

git checkout $CI_MERGE_REQUEST_TARGET_BRANCH_NAME
git branch -D reviewers-$CI_JOB_ID
