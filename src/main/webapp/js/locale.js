function localeManager(locale) {
    if (document.querySelector('html').lang !== locale) {
        setLocale(locale);
    }
    const localeSelect = document.getElementById("locale-select");
    localeSelect.addEventListener("change", () => {
        if (localeSelect.value) {
            setLocale(localeSelect.value);
        }
    });
}

function setLocale(locale) {
    document.querySelector('html').lang = locale;
    localStorage.setItem('locale', locale);
    document.location.href = "?sessionLocale=" + locale;
}

export {localeManager};