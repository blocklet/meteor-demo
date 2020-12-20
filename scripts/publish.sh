set -e

VERSION=$(cat version | awk '{$1=$1;print}')
echo "publish version ${VERSION}"

git config --local user.name "bot"
git config --local user.email "bot@arcblock.io"

npm config set '//registry.npmjs.org/:_authToken' "${NPM_TOKEN}"

echo "publishing to github releases..."
npm run bundle
make release
