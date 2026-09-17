const CACHE_NAME = 'basket-manager-v10.0.0';
const APP_SHELL = ['./manifest.webmanifest','./icon-192.png','./icon-512.png'];
self.addEventListener('install', event => { self.skipWaiting(); event.waitUntil(caches.open(CACHE_NAME).then(c=>c.addAll(APP_SHELL))); });
self.addEventListener('activate', event => { event.waitUntil(caches.keys().then(keys=>Promise.all(keys.map(k=>caches.delete(k)))).then(()=>self.clients.claim())); });
self.addEventListener('fetch', event => {
 const req=event.request,url=new URL(req.url); if(req.method!=='GET') return;
 if(url.hostname.includes('supabase.co')||url.pathname.includes('/rest/v1/')||url.pathname.includes('/auth/v1/')||url.pathname.includes('/storage/v1/')) return;
 if(req.mode==='navigate'||url.pathname.endsWith('/index.html')) { event.respondWith(fetch(req,{cache:'no-store'})); return; }
 event.respondWith(caches.match(req).then(cached=>cached||fetch(req).then(resp=>{if(resp&&resp.status===200&&resp.type!=='opaque'){const copy=resp.clone();caches.open(CACHE_NAME).then(c=>c.put(req,copy));}return resp;})));
});
