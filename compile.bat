git status        
git add .         
git commit -m "Configuracion Android Play Store"
git push

flutter pub get
flutter pub run flutter_launcher_icons
flutter build apk
flutter install