import {loadTheme} from "./js/theme";
import {result} from "./js/result";
import {localeManager} from "./js/locale";

document.addEventListener('DOMContentLoaded', function () {
    loadTheme();
    const locale = localStorage.getItem('locale') || 'en';
    localeManager(locale);
    result();
});