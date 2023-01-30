#!/bin/bash

# Configure git user information
git config --global user.name "saroj"
git config --global user.email "saroj-email@example.com"

# Checkout the desired branch
git checkout deployment

#adding new update

bash ./2ndversion-of-update.sh

# Add the changes to the staging area
git add .

# Commit the changes
git commit -m "commit message"

# Store the credentials in an environment variable
CREDENTIALS=$(cat <<-END
username= ekka007
password= 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
END
)

# Push the changes to the remote repository using the stored credentials
echo $CREDENTIALS | https://ekka007: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@github.com/ekka007/cab-booking-webapp_PROJECT.git deployment
