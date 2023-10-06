<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
  String[] checkboxValues = {"-4", "-3", "-2", "-1", "0", "1", "2", "3", "4"};
  String[] selectValues = {"1", "1.5", "2", "2.5", "3"};
%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Lab2</title>
  <link rel="icon" type="image/x-icon" href="graph.svg">
  <link rel="stylesheet" href="styles.css">
  <script src="dist/indexBundle.js"></script>
</head>
<body>

<table>
  <tr>
    <td>
      <h1>
        Маликов Глеб Игоревич P3224 вариант 24923
      </h1>
    </td>
  </tr>
  <tr>
    <td>
      <jsp:include page="graph.svg"/>
    </td>
  </tr>

  <tr>
    <td>
      <form action="" method="post" id="form">
        <table id="formTable">
          <tr>
            <td class="valueMarker" id="xValue">X=</td>
            <td class="formRow">
              <%
              for (String value : checkboxValues) {
              %>
              <label><%=value%><input type="checkbox" class='Xselection' value="<%=value%>" name="X"></label>
              <%
                }
              %>

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
              <label for="RSelect"></label>
              <select name="R" id="RSelect">
                <%
                for (String value : selectValues) {
                %>
                <option value="<%=value%>" class='Rselection'><%=value%></option>
                <%
                  }
                %>
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
        <jsp:useBean id="hitHistory"
                     scope="session"
                     class="co.glebmavi.webproglab2.beans.HitHistory"
        />
        <c:forEach var="hit" items="${hitHistory.getHitList()}">
          <tr>
            <td>${hit.getX()}</td>
            <td>${hit.getY()}</td>
            <td>${hit.getR()}</td>
            <td>${hit.isHit()}</td>
            <td>${hit.getCurrentDate()}</td>
            <td>${hit.getExecutionTime()} ms</td>
          </tr>
        </c:forEach>
        </tbody>

      </table>
    </td>
  </tr>


</table>

</body>
</html>