#!/bin/sh

COMMITS_COUNT=$(git log --oneline reviewers-$CI_JOB_ID ^$CI_MERGE_REQUEST_TARGET_BRANCH_NAME | wc -l)

git diff $CI_MERGE_REQUEST_TARGET_BRANCH_NAME --name-only | \
    xargs git log -n 50 --skip $COMMITS_COUNT --pretty=%aE -- | \
    sort | uniq -c | sort -nr
