import {removePoints} from "./drawer.js";
import {result} from "./result";
import {loadTheme} from "./theme";

function responseGetter() {
    const form = document.getElementById('form');

    form.addEventListener("submit", async function (event) {
        event.preventDefault();
        removePoints();

        const formData = new FormData(form);

        try {
            const response = await fetch("/WebProgLab2/controller", {
                method: "POST",
                dataType: "json",
                body: formData,
            });

            if (!response.ok) {
                throw new Error(`HTTP error! Status: ${response.status}`);
            }

            const data = await response.text();
            handleResponse(data);
            } catch (error) {
            alert('Error: ' + error.message);
        }
    });
}

function handleResponse(data) {
    document.documentElement.innerHTML = data;
    loadTheme();
    result();
}

export {responseGetter};
