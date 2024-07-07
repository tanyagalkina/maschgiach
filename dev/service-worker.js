const CACHE_NAME_PREFIX = 'my-pwa-cache-';

async function getCacheData() {
    const response = await fetch('./cache-files.js');
    const scriptText = await response.text();
    const cacheData = {};
    eval(scriptText); // This will execute the exported cacheData assignment
    return cacheData;
}

self.addEventListener('install', event => {
    event.waitUntil(
        (async () => {
            const cacheData = await getCacheData();
            const CACHE_NAME = `${CACHE_NAME_PREFIX}${cacheData.cacheHash}`;
            const cache = await caches.open(CACHE_NAME);
            console.log('Opened cache:', CACHE_NAME);
            await cache.addAll(cacheData.urlsToCache);
        })()
    );
});

self.addEventListener('fetch', event => {
    event.respondWith(
        caches.match(event.request)
            .then(response => {
                if (response) {
                    return response;
                }
                return fetch(event.request);
            })
    );
});

self.addEventListener('activate', event => {
    event.waitUntil(
        (async () => {
            const cacheData = await getCacheData();
            const CACHE_NAME = `${CACHE_NAME_PREFIX}${cacheData.cacheHash}`;
            const cacheWhitelist = [CACHE_NAME];
            const cacheNames = await caches.keys();
            await Promise.all(
                cacheNames.map(cacheName => {
                    if (!cacheWhitelist.includes(cacheName)) {
                        console.log('Deleting cache:', cacheName);
                        return caches.delete(cacheName);
                    }
                })
            );
        })()
    );
});
