#!/bin/bash

# Function to build a Docker image
build_image() {
    repo_name=$1
    image_name=$2

    if [ -d "$repo_name" ]; then
        echo "Building Docker image for $repo_name..."
        cd "$repo_name" || exit
        if [ -f "Dockerfile" ]; then
            docker build -t "$image_name" .
            echo "Docker image $image_name built successfully."
            # Create the build folder if it doesn't exist
            mkdir -p ../build
            # Save the Docker image as a tar file in the build folder
            docker save -o "../build/${image_name}.tar" "$image_name"
            echo "Docker image $image_name saved as build/${image_name}.tar."
        else
            echo "No Dockerfile found in $repo_name. Skipping..."
        fi
        cd ..
    else
        echo "Directory $repo_name does not exist. Skipping..."
    fi
}

# Build images for each repository
build_image "FND" "fnd-image"
build_image "SYU" "syu-image"
build_image "TYA" "tya-image"
build_image "TPP" "tpp-image"
build_image "PT" "pt-image"
build_image "RYE" "rye-image"