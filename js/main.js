function register_sw(sw_cached_pages) {

    if( 'serviceWorker' in navigator){
        console.log('Service worker is supported')
        window.addEventListener('load', () => {
            navigator.serviceWorker
            .register(sw_cached_pages)
            .then(reg => console.log("Service Worker Registered"))
            .catch(err => console.log(`Service Worker error ${err}`))
        });
    }
}