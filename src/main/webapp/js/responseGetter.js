import {removePoints} from "./drawer.js";

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
            } else {
                handleResponse();
            }

            } catch (error) {
            alert('Error: ' + error.message);
        }
    });
}

function handleResponse() {
    document.location.href = "result.jsp";
}

export {responseGetter};
