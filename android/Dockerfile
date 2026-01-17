# ---------- Build stage ----------
FROM cirrusci/flutter:stable AS build

WORKDIR /app

COPY pubspec.yaml pubspec.lock ./
RUN flutter pub get

COPY . .
RUN flutter build web --release

# ---------- Runtime stage ----------
FROM nginx:alpine

COPY --from=build /app/build/web /usr/share/nginx/html

# Configuración para SPA (Flutter)
RUN rm /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/conf.d

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
