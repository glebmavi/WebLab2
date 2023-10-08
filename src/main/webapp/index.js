import {formListener} from "./js/variablesVerification";
import {responseGetter} from "./js/responseGetter";
import {resetTable} from "./js/resetTable";
import {loadTheme} from "./js/theme";

document.addEventListener('DOMContentLoaded', function () {
    loadTheme();
    formListener();
    resetTable();
    responseGetter();
});