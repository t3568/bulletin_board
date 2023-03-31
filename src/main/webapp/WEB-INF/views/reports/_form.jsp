<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="constants.AttributeConst" %>

<c:if test="${errors != null}">
    <div id="flush_error">
        入力内容にエラーがあります。<br />
        <c:forEach var="error" items="${errors}">
            ・<c:out value="${error}" /><br />
        </c:forEach>

    </div>
</c:if>
<fmt:parseDate value="${report.reportDate}" pattern="yyyy-MM-dd" var="reportDay" type="date" />
<label for="${AttributeConst.REP_DATE.getValue()}">日付</label><br />
<input type="date" name="${AttributeConst.REP_DATE.getValue()}" id="${AttributeConst.REP_DATE.getValue()}" value="<fmt:formatDate value='${reportDay}' pattern='yyyy-MM-dd' />" />
<br /><br />

<label>氏名</label><br />
<c:out value="${sessionScope.login_employee.name}" />
<br /><br />

<div class="mb-3">
  <label for="FormControlInput1" class="form-label">タイトル</label>
  <input type="text" class="form-control" id="FormControlInput1" name="${AttributeConst.REP_TITLE.getValue()}" value="${report.title}" />
</div>
<div class="mb-3">
  <label for="FormControlTextarea1" class="form-label">内容</label>
  <textarea class="form-control" id="FormControlTextarea1" rows="3" name="${AttributeConst.REP_CONTENT.getValue()}">${report.content}</textarea>

</div>
<div class="mb-3">
<label for="DataList" class="form-label">掲載部署</label>
<input class="form-control" list="datalistOptions" id="DataList" placeholder="部署名を選択" name="${AttributeConst.REP_DEPARTMENT.getValue()}" value="${report.department}" />
<datalist id="datalistOptions">

  <option value="総務部">
  <option value="経理部">
  <option value="人事部">
  <option value="営業部">
  <option value="情報システム部">
</datalist>
</div>
<input type="hidden" name="${AttributeConst.REP_ID.getValue()}" value="${report.id}" />
<input type="hidden" name="${AttributeConst.TOKEN.getValue()}" value="${_token}" />
<div class="mb-3">
<button type="submit">投稿</button>
</div>