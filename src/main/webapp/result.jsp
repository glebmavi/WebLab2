<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Result</title>
    <meta charset="UTF-8">
    <link rel="icon" type="image/x-icon" href="assets/graph.svg">
    <link rel="stylesheet" href="styles.css">
</head>
<body>

<jsp:include page="theme.html"/>

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
            <jsp:include page="assets/graph.svg"/>
        </td>
    </tr>

    <tr>
        <td>
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
                <jsp:useBean id="currentHitHistory"
                             scope="session"
                             class="co.glebmavi.webproglab2.beans.HitHistory"
                />
                <tbody>
                <c:forEach var="hit" items="${currentHitHistory.getHitList()}">
                    <tr>
                        <td class="xTableData">${hit.getX()}</td>
                        <td class="yTableData">${hit.getY()}</td>
                        <td class="rTableData">${hit.getR()}</td>
                        <td class="isHitTableData">${hit.isHit()}</td>
                        <td class="dateTableData">${hit.getCurrentDate()}</td>
                        <td class="execTimeTableData">${hit.getExecutionTime()} ms</td>

                    </tr>
                </c:forEach>
                </tbody>

            </table>
        </td>
    </tr>

    <tr>
        <td>

            <a href="${pageContext.request.contextPath}/">
                <button id="backButton">Назад</button>
            </a>
        </td>
    </tr>


</table>

</body>
</html>
