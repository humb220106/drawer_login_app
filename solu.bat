@echo off
echo =======================================
echo Fixing Flutter Build (Gradle Cache)
echo =======================================

:: Stop Gradle daemons
gradlew --stop

:: Delete Gradle caches
echo Deleting Gradle caches...
rmdir /s /q "%USERPROFILE%\.gradle\caches"

:: Delete project Gradle folder if exists
rmdir /s /q ".gradle"

:: Clean Flutter
echo Running flutter clean...
flutter clean

:: Get dependencies
echo Running flutter pub get...
flutter pub get

:: Build APK
echo Building APK...
flutter build apk

:: Run app
echo Launching app...
flutter run

pause

