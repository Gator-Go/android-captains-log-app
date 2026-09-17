# Android Captain's Log App

Prototype. Factory-generated Captain's Log app from droid-builder.

Catalog: https://sw-builder.com/appstore/android/apps/android-captains-log-app.html

Builder: https://github.com/Gator-Go/droid-builder

## Build (Unix)

Prerequisites: Git, Groovy, JDK, Android SDK.

Expected sibling directories:

    ~/android/droid-builder
    ~/android/android-captains-log-app

```bash
cd ~/android/android-captains-log-app
git pull
./android-captains-log-build.sh
```

## Layout:
```text
android-captains-log-app/
├── android-captains-log-build.sh
├── Extender/
│   ├── CaptainsLogExtender.groovy
│   ├── logo.png
│   ├── ldpi-logo.png
│   ├── mdpi-logo.png
│   ├── hdpi-logo.png
│   ├── xhdpi-logo.png
│   └── xxhdpi-logo.png
└── options/
    ├── APP_ENUMS.xml
    ├── APP_NAMES.xml
    └── APP_TABLES.xml
```
## Note:

The template/ and build/ dirs appear after a build. They come from droid-builder.

DroidBuilder.groovy is copied in from droid-builder at build time.

CaptainsLogExtender.groovy performs functions unique to the captains-log app such as deploying 
the captains-log logo images.

The captainsLog/ dir appear after a build and is the build output and where
the new app is created.