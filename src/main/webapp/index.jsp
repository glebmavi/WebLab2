<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Lab1</title>
  <link rel="icon" type="image/x-icon" href="graph.svg">
  <link rel="stylesheet" href="styles.css">
  <script src="dist/bundle.js"></script>
</head>
<body>

<table>
  <tr>
    <td>
      <h1>
        Маликов Глеб Игоревич P3224 вариант 24923
      </h1>
      <a href="hello-servlet">Hello Servlet</a>
    </td>
  </tr>

  <tr>
    <td>
      <svg xmlns="http://www.w3.org/2000/svg" width="400" height="400" viewBox="-10 -10 22 22" id="svgGraph">
        <!--Definition of arrowhead markers -->
        <defs>
          <marker id="arrowhead" markerWidth="6" markerHeight="6" refX="3" refY="3" orient="auto">
            <polygon class="marker" points="0 0, 6 3, 0 6"></polygon>
          </marker>

          <marker id="arrowhead-inverted" markerWidth="6" markerHeight="6" refX="3" refY="3" orient="auto">
            <polygon class="marker" points="0 3, 6 6, 6 0"></polygon>
          </marker>

          <circle r="0.3" id="circle" fill="black"></circle>
        </defs>

        <!--Shapes-->
        <rect class="shape" height="3" width="6" x="-6" y="-3" fill="#3399FF"></rect>
        <path class="shape" d="M-6 0 A6 6 2 0 0 0 6 L 0 0 Z" fill="#3399FF"></path>
        <polygon class="shape" points="0 6, 6 0, 0 0" fill="#3399FF"></polygon>

        <!-- X-axis with arrowhead -->
        <line x1="-9" y1="0" x2="9" y2="0" stroke-width="0.15" marker-end="url(#arrowhead)"></line>

        <!--Markers for X-->
        <line x1="3" y1="-0.5" x2="3" y2="0.5" stroke-width="0.15"></line>
        <line x1="6" y1="-0.5" x2="6" y2="0.5" stroke-width="0.15"></line>
        <line x1="-3" y1="-0.5" x2="-3" y2="0.5" stroke-width="0.15"></line>
        <line x1="-6" y1="-0.5" x2="-6" y2="0.5" stroke-width="0.15"></line>

        <!-- Y-axis with arrowhead -->
        <line x1="0" y1="-9" x2="0" y2="9" stroke-width="0.15" marker-start="url(#arrowhead-inverted)"></line>

        <!--Markers for Y-->
        <line x1="-0.5" y1="3" x2="0.5" y2="3" stroke-width="0.15"></line>
        <line x1="-0.5" y1="6" x2="0.5" y2="6" stroke-width="0.15"></line>
        <line x1="-0.5" y1="-3" x2="0.5" y2="-3" stroke-width="0.15"></line>
        <line x1="-0.5" y1="-6" x2="0.5" y2="-6" stroke-width="0.15"></line>

        <!-- X-axis labels -->
        <text x="8.5" y="-0.5" font-size="1.2" text-anchor="start">X</text>
        <text x="6" y="-0.6" font-size="0.8" text-anchor="middle" class="RText">R</text>
        <text x="3" y="-0.6" font-size="0.8" text-anchor="middle" class="RHalfText">R/2</text>
        <text x="-3" y="-0.6" font-size="0.8" text-anchor="middle" class="MinusRHalfText">-R/2</text>
        <text x="-6" y="-0.6" font-size="0.8" text-anchor="middle" class="MinusRText">-R</text>

        <!-- Y-axis labels -->
        <text x="0.5" y="-8.5" font-size="1.2" text-anchor="start">Y</text>
        <text x="0.6" y="6.2" font-size="0.8" text-anchor="start" class="MinusRText">-R</text>
        <text x="0.6" y="3.2" font-size="0.8" text-anchor="start" class="MinusRHalfText">-R/2</text>
        <text x="0.6" y="-2.8" font-size="0.8" text-anchor="start" class="RHalfText">R/2</text>
        <text x="0.6" y="-5.8" font-size="0.8" text-anchor="start" class="RText">R</text>

      </svg>
    </td>
  </tr>

  <tr>
    <td>
      <form action="src/check.php" method="post" id="form">
        <table id="formTable">
          <tr>
            <td class="valueMarker" id="xValue">X=</td>
            <td class="formRow">
              <label>-3<input type="checkbox" class='Xselection' value="-3" name="X"></label>
              <label>-2<input type="checkbox" class='Xselection' value="-2" name="X"></label>
              <label>-1<input type="checkbox" class='Xselection' value="-1" name="X"></label>
              <label>0<input type="checkbox" class='Xselection' value="0" name="X"></label>
              <label>1<input type="checkbox" class='Xselection' value="1" name="X"></label>
              <label>2<input type="checkbox" class='Xselection' value="2" name="X"></label>
              <label>3<input type="checkbox" class='Xselection' value="3" name="X"></label>
              <label>4<input type="checkbox" class='Xselection' value="4" name="X"></label>
              <label>5<input type="checkbox" class='Xselection' value="5" name="X"></label>
            </td>
            <td class="leftColumn"></td>
          </tr>

          <tr>
            <td class="valueMarker" id="yValue">Y=</td>
            <td class="formRow">
              <label for="YText"></label> <input type="text" id='YText' name="Y">
              <p id="YMessage">Введите число от -5 до 3</p>
            </td>
            <td class="leftColumn"></td>
          </tr>

          <tr>
            <td class="valueMarker" id="rValue">R=</td>
            <td class="formRow">
              <label>1<input type="radio" class='Rselection' value="1" name="R"></label>
              <label>2<input type="radio" class='Rselection' value="2" name="R"></label>
              <label>3<input type="radio" class='Rselection' value="3" name="R"></label>
              <label>4<input type="radio" class='Rselection' value="4" name="R"></label>
              <label>5<input type="radio" class='Rselection' value="5" name="R"></label>
            </td>
            <td class="leftColumn"></td>
          </tr>

        </table>

        <button type="submit" id="submitButton">Отправить</button>
      </form>
    </td>
  </tr>

  <tr>
    <td>
      <button id="resetTable" >Очистить таблицу</button>
      <table id="resultTable" class="tableWithBorder">
        <thead>
        <tr>
          <th>X</th>
          <th>Y</th>
          <th>R</th>
          <th>Попадание</th>
          <th>Время</th>
          <th>Время работы скрипта</th>
        </tr>
        </thead>
        <tbody>

        </tbody>

      </table>
    </td>
  </tr>


</table>

</body>
</html>