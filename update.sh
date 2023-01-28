# this is shell scipt to automatic get update in the manifest file

# Remove the current tag from the deployment file
sed -i 's/\(image: sarojdevops\/cab-booking-app:\).*/\1/' deployment.yaml


# Get the latest tag for the sarojdevops/cab-booking-app image
#tag=$(docker images --format "{{.Tag}}" sarojdevops/cab-booking-app | tail -n 1)
#latest_tag=$(docker images | grep sarojdevops/cab-booking-app | grep v | awk '{print $2}' | tail -n 1)
#echo $latest_tag

# Replace the current tag in the deployment file with the latest tag
#sed -i "s|image: sarojdevops/cab-booking-app|image: sarojdevops/cab-booking-app:$tag|g" deployment.yaml

# Get the latest tag of the image
latest_tag=$(docker images | grep sarojdevops/cab-booking-app | grep v | awk '{print $2}' | tail -n 1)

# Update the deployment file with the latest tag
sed -i "s|sarojdevops/cab-booking-app:.*|sarojdevops/cab-booking-app:$latest_tag|g" deployment.yaml
