#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"   # ~/android
APP="$ROOT/android-captains-log-app"
BUILDER="$ROOT/droid-builder"

cd "$BUILDER"
git pull

cd "$ROOT"
rm -rf "$APP/template"
cp -R "$BUILDER"/* "$APP"

cd "$APP"
git pull
rm -rf captainsLog
groovy DroidBuilder

cd Extender
groovy CaptainsLogExtender

cd ../captainsLog
chmod +x gradlew
./gradlew assembleRelease