call flutter clean
timeout /t 5 /nobreak

call flutter pub get
timeout /t 5 /nobreak

call flutter pub run flutter_launcher_icons
timeout /t 5 /nobreak

call flutter build apk --release
timeout /t 5 /nobreak

call flutter install --release