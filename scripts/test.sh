set -e

# 0) Bootstrap
echo "Bootstrapping..."
npm run lerna-bootstrap

# 1) Run linter
echo "Linting..."
npm run lint

# 2) Run tests in emulator
npx firebase --project="${GCLOUD_PROJECT}" emulators:exec --only firestore "npm run lerna-test"