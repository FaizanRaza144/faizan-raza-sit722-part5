# Your Solution

#
# Publishes a Docker image.
#
# Environment variables:
#
#   CONTAINER_REGISTRY - The hostname of your container registry.
#   REGISTRY_UN - User name for your container registry.
#   REGISTRY_PW - Password for your container registry.
#   VERSION - The version number to tag the images with.
#
# Usage:
#
#       ./scripts/push-image.sh
#

set -u # or set -o nounset
: "$CONTAINER_REGISTRY"
: "$VERSION"
: "$REGISTRY_UN"
: "$REGISTRY_PW"

echo $REGISTRY_PW | docker login $CONTAINER_REGISTRY --username $REGISTRY_UN --password-stdin

docker tag part4-inventory_management microservice12.azurecr.io/part4-inventory_management:latest
docker tag part4-book_catalog microservice12.azurecr.io/part4-book_catalog:latest
docker push microservice12.azurecr.io/part4-inventory_management:latest
docker push microservice12.azurecr.io/part4-book_catalog:latest