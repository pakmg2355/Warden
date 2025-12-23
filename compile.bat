call git status        
call git add .         
call git commit -m "Configuracion Android Play Store"
call git push

call flutter pub get
pause
call flutter pub run flutter_launcher_icons
call flutter build apk
call flutter install