#!/usr/bin/env sh

# Exit if any command fails
set -e

echo "Building Application"
yarn run build

echo "Syncing with S3"
distDir="${0%/*}"/../dist
s3cmd sync $distDir s3://aws-website-patrickmcgrathio-349g1

echo "Done"
