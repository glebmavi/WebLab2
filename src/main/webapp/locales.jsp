<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<fmt:setLocale value="${param.lang}"/>
<fmt:setBundle basename="i18n.messages"/>
<div id="locale-selector">
    <select id="locale-select">
        <option value="" selected><fmt:message key="locales.choose"/></option>
        <option value="en">English 🇬🇧</option>
        <option value="ru">Русский 🇷🇺</option>
        <option value="es">Español 🇪🇸</option>
    </select>
</div>

