import {drawR, drawPoint} from "./js/drawer";

document.addEventListener('DOMContentLoaded', function () {
    const RText = document.getElementsByClassName("RText");
    const RHalfText = document.getElementsByClassName("RHalfText");
    const MinusRHalfText = document.getElementsByClassName("MinusRHalfText");
    const MinusRText = document.getElementsByClassName("MinusRText");
    const svgGraph = document.getElementById("svgGraph");
    const xValues = document.getElementsByClassName("xTableData");
    const yValues = document.getElementsByClassName("yTableData"); // all y should be equal
    const rValues = document.getElementsByClassName("rTableData"); // all r should be equal

    drawR(rValues[0].value, RText, RHalfText, MinusRHalfText, MinusRText);
    for (let i = 0; i < xValues.length; i++) {
        drawPoint(xValues[i].value, yValues[0].value, rValues[0].value, svgGraph);
    }

});