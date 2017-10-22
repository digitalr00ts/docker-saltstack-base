#!/usr/bin/env bash

set -e

[ "${TRAVIS_PULL_REQUEST}" != 'false' ] && exit
[ "${TRAVIS_BRANCH}" != 'develop' ] && exit

GIT_COMMITTER_EMAIL='travis@digitalr00ts.com'
GIT_COMMITTER_NAME='Travis CI'
GIT_REPO_PUSH="git@$(git remote -v | head -n1 | grep -o --color=never 'github\.com.* ' | sed 's/\//\:/')"
GIT_BASE='master'

mkdir -p ~/.ssh/
openssl aes-256-cbc -K $encrypted_d816d8b9a19e_key -iv $encrypted_d816d8b9a19e_iv -in .travis/id_rsa.enc -out ~/.ssh/id_rsa -d
chmod 700 ~/.ssh/
chmod 400 ~/.ssh/id_rsa

echo "Fetching and checking out ${BIT_BASE} branch"
git fetch origin ${GIT_BASE}:${GIT_BASE}
git checkout ${GIT_BASE}
echo
echo "Merging $TRAVIS_COMMIT"
git merge --ff-only "$TRAVIS_COMMIT"
echo
echo "Pushing changes"
git push ${GIT_REPO_PUSH}
