'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "120a0852a47c8c5dc2c2dad33be44b1c",
"assets/AssetManifest.bin.json": "94cacd0acf886d191263c9f54a96d72a",
"assets/assets/audio/sfx/ambient01.mp3": "66686eb9435ec24ec474647b4bd58fd2",
"assets/assets/audio/sfx/ambient02.mp3": "b77736a352a9b2a011ac6b4f126dc679",
"assets/assets/audio/sfx/ambient03.mp3": "6ebec837725d3b01381931f98b3be78b",
"assets/assets/audio/sfx/ambient04.mp3": "1a32daaff141a8f666af3bbce41cb559",
"assets/assets/audio/sfx/ambient05.mp3": "9ad25835ead757837b2de4c3cdf8b6dd",
"assets/assets/audio/sfx/combat01.mp3": "db55abb188f765bd477d291d9df499ef",
"assets/assets/audio/sfx/combat02.mp3": "9511132f21daccbd80eb5a7e5b20a588",
"assets/assets/audio/sfx/combat03.mp3": "824998c646132b731e4f50093401763a",
"assets/assets/audio/sfx/combat04.mp3": "ccc15d20aa34118c4fb6cd892ebc815f",
"assets/assets/audio/sfx/combat05.mp3": "355e861b93a685aee6e7c5afb01ab2e2",
"assets/assets/audio/sfx/fist.mp3": "e9313c750d883a1d549af459ad898f12",
"assets/assets/audio/sfx/shield.mp3": "03f2031ea846fe82843470355a80a591",
"assets/assets/audio/sfx/spear.mp3": "aa776b6059e01b1f7ba6be0c21899069",
"assets/assets/fonts/tengwar.ttf": "7d487e66801fca1222913eea69562271",
"assets/assets/fonts/tolkien_font.ttf": "cb70b092091afc600a28c7c99360f137",
"assets/assets/icon/items/amuleto.svg": "edc29deb5a67b911693960e681671d59",
"assets/assets/icon/items/anillo.svg": "edc29deb5a67b911693960e681671d59",
"assets/assets/icon/items/arma.svg": "735f8ae0f9738707fbdc3653abf66c9a",
"assets/assets/icon/items/botas.svg": "66a8632721424b406f0932f75ae0fd75",
"assets/assets/icon/items/brazalete.svg": "01f1d4c6141cb164927385c79662449f",
"assets/assets/icon/items/capa.svg": "75bf42ed1bc54ba56ef7b195ce701747",
"assets/assets/icon/items/casco.svg": "f4513a7f6391c0c9928d7b7efb5340c6",
"assets/assets/icon/items/collar.svg": "2ba698bd225bdd0388521577cef73e3b",
"assets/assets/icon/items/escudo.svg": "b4921f0be6b49bed857173416a26aea8",
"assets/assets/icon/items/guantes.svg": "082e374f6d2c040a2815b0f8887a30e7",
"assets/assets/icon/items/hombreras.svg": "9c5b78bad7176d602ba71ef94e24b173",
"assets/assets/icon/items/pantalones.svg": "380a99371b3dec903a7a7d327ce1524b",
"assets/assets/icon/items/pechera.svg": "866fb4ca9e62504f850bf200bfe6f1b2",
"assets/assets/icon/items/pendiente.svg": "4df67ef383748c6f4450b88489cb6273",
"assets/assets/icon/items/pocion.svg": "1ba5a3c33b5404d4397ea32595b3efa3",
"assets/assets/icon/items/vacio.svg": "fb590503d1dc9dac39609c5eec771edd",
"assets/assets/img/bree01.jpg": "d943d85c5c9649a41260bcd2edc25040",
"assets/assets/img/bree02.jpg": "a80c9d2a5ccad84cccd2564a4c86da77",
"assets/assets/img/bree03.jpg": "cab163697cf0a9c94068cfac48373a05",
"assets/assets/img/bree04.jpg": "05892e66a5b5a51d06f5b9f2b5911fa9",
"assets/assets/img/bree05.jpg": "9eae96abb85ea8a848717fe72675e9ab",
"assets/assets/img/personaje.jpg": "529559a7c87f3a05fb1d078852064e53",
"assets/FontManifest.json": "c0a67cab7b074c51f2aa9e0e959a4594",
"assets/fonts/MaterialIcons-Regular.otf": "f7380a08a581d34d5ef475ee07874442",
"assets/NOTICES": "1e065c00cbde00f120f21d286d49593c",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/shaders/stretch_effect.frag": "40d68efbbf360632f614c731219e95f0",
"canvaskit/canvaskit.js": "8331fe38e66b3a898c4f37648aaf7ee2",
"canvaskit/canvaskit.js.symbols": "a3c9f77715b642d0437d9c275caba91e",
"canvaskit/canvaskit.wasm": "9b6a7830bf26959b200594729d73538e",
"canvaskit/chromium/canvaskit.js": "a80c765aaa8af8645c9fb1aae53f9abf",
"canvaskit/chromium/canvaskit.js.symbols": "e2d09f0e434bc118bf67dae526737d07",
"canvaskit/chromium/canvaskit.wasm": "a726e3f75a84fcdf495a15817c63a35d",
"canvaskit/skwasm.js": "8060d46e9a4901ca9991edd3a26be4f0",
"canvaskit/skwasm.js.symbols": "3a4aadf4e8141f284bd524976b1d6bdc",
"canvaskit/skwasm.wasm": "7e5f3afdd3b0747a1fd4517cea239898",
"canvaskit/skwasm_heavy.js": "740d43a6b8240ef9e23eed8c48840da4",
"canvaskit/skwasm_heavy.js.symbols": "0755b4fb399918388d71b59ad390b055",
"canvaskit/skwasm_heavy.wasm": "b0be7910760d205ea4e011458df6ee01",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "24bc71911b75b5f8135c949e27a2984e",
"flutter_bootstrap.js": "9e96041fb0d5326049b96be7dfa9a215",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "06524c1a41c991775565a0297899ea2a",
"/": "06524c1a41c991775565a0297899ea2a",
"main.dart.js": "2f35c2f24ecb8887ffbbed319dab2f11",
"manifest.json": "39455e2ba3614acdb2166d56441c74e4",
"version.json": "ea67e9bc419e1dc20778fb14d7326762"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
