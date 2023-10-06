import {removePoints} from "./drawer.js";
import {loadTableData} from "./loadData.js";

function responseGetter() {
    const svgGraph = document.getElementById("svgGraph");
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
    document.write(data);
    // Dispatch the DOMContentLoaded event if needed
    window.document.dispatchEvent(new Event("DOMContentLoaded", {
        bubbles: true,
        cancelable: true
    }));
}

function appendTableDataLocalStorage(data) { // TODO: perhaps update table?
    const dataArray = loadTableData();

    dataArray.push(data);
    const updatedData = JSON.stringify(dataArray);
    localStorage.setItem('tableData', updatedData);
}

export {responseGetter};
