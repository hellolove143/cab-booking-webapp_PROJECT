##############################################################
# AUTHOR : SAROJ EKKA
# TASK : TO UPDATE THE MANIFEST FILE
# WORK : AUTOMATIC TIGGER THE ARGOCD "GitOps"
# USAGE : with any script reusable  for gitops
##############################################################
# Remove the current tag from the deployment file
#!/bin/bash

# Define the image name
image="sarojdevops/cab-booking-app::xyz"

# Remove the tag from the image name
image=${image%:*}

# Replace the image name in the deployment.yaml file
sed -i "s|sarojdevops/cab-booking-app.*|$image|g" deployment.yaml

# Confirm that the change was made
echo "The tag was removed from the image name in deployment.yaml"

# Get the latest tag of the image
latest_tag=$(docker images | grep sarojdevops/cab-booking-app | awk '{print $2}' | head -n 1)

# Update the deployment file with the latest tag
sed -i "s|sarojdevops/cab-booking-app:.*|sarojdevops/cab-booking-app:$latest_tag|g" deployment.yaml

echo "and added new latest tag-versions " : $latest_tag : "in deployment.yaml"
