# !/bin/bash

if [ "$CF_PAGES_BRANCH" == "master" ]; then
  hugo --environment production
elif [ "$CF_PAGES_BRANCH" == "preview" ]; then
  hugo --environment production --baseURL "https://preview.nomadic-westward.pages.dev/"
else
  hugo --baseURL "$CF_PAGES_URL"
fi
