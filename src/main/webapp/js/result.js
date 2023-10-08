import {drawR, drawPoint} from "./drawer";

function result() {
    const RText = document.getElementsByClassName("RText");
    const RHalfText = document.getElementsByClassName("RHalfText");
    const MinusRHalfText = document.getElementsByClassName("MinusRHalfText");
    const MinusRText = document.getElementsByClassName("MinusRText");
    const svgGraph = document.getElementById("svgGraph");
    const xValues = document.getElementsByClassName("xTableData");
    const yValues = document.getElementsByClassName("yTableData"); // all y should be equal
    const rValues = document.getElementsByClassName("rTableData"); // all r should be equal

    drawR(rValues[0].innerHTML, RText, RHalfText, MinusRHalfText, MinusRText);
    for (let i = 0; i < xValues.length; i++) {
        drawPoint(xValues[i].innerHTML, yValues[0].innerHTML, rValues[0].innerHTML, svgGraph);
    }

}

export {result};