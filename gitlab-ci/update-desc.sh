curl -v "$CI_API_V4_URL/projects/$CI_MERGE_REQUEST_PROJECT_ID/merge_requests/$CI_MERGE_REQUEST_IID" \
    -H 'Content-Type: application/json'
    -H "Private-Token: $GITLAB_API_TOKEN"
    c