const fs = require('fs')

const GITLAB_USER_EMAIL = process.env.GITLAB_USER_EMAIL
const usersMap = require(process.env.USERS_MAP)

const reviewers = fs
    .readFileSync('/dev/stdin', 'utf8')
    .trim()
    .replace(/^\s*\d+\s*/igm, '')
    .split('\n')
    .filter(email => email !== GITLAB_USER_EMAIL)
    .map(email => usersMap[email])
    .filter(Boolean)
    .map(username => '- @' + username)
    .join('\n')

const data = JSON.stringify({ description: `**Code Review**:  \n${reviewers}` })
console.log(data)
