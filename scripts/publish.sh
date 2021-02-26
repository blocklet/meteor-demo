set -e

VERSION=$(cat version | awk '{$1=$1;print}')
echo "publish version ${VERSION}"

git config --local user.name "bot"
git config --local user.email "bot@arcblock.io"

echo "publishing to staging blocklet registry"
npm run bundle
blocklet config registry ${STAGING_REGISTRY}
blocklet publish --developer-sk ${ABTNODE_DEV_STAGING_SK}

echo "publishing to github releases..."
make release
