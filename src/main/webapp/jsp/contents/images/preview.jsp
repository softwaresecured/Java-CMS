<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<h1 style="text-align: center;">${page['title']} &nbsp; <a href="/<c:out value="${page.module}" />?action=edit&id=<c:out value="${image.id}"/>"><img alt="edit" src="images/page_edit.png" title="Edytuj"></a> &nbsp; <a href="/<c:out value="${page.module}" />?action=import&id=<c:out value="${image.id}"/>"><img alt="import" src="images/import.png" title="Importuj"></a> &nbsp; <a href="/<c:out value="${page.module}" />"><img alt="close" src="images/exit.png" title="Zamknij"></a></h1>

<p>

<table align="center" width="600" cellpadding="5" cellspacing="0">

	<form action="/<c:out value="${page.module}" />" method="post">
		<tr class="ColumnHeaders">
			<td colspan="2">
				<span class="Icon"><img src="images/image.png" /></span>
				<span class="Title">Podgląd obrazka</span>
			</td>
		</tr>
		<tr class="FormRow">
			<td>Id:</td>
			<td><c:out value="${image.id}" /><input type="hidden" name="id" value="<c:out value="${image.id}" />"></td>
		</tr>
		<tr class="FormRow preview">
			<td>Preview:</td>
			<td>
				<div class="dc">
					<img class="dynamic" src="upload/<c:out value="${image.file_name}" />" width="450" height="300" onload="showImage(this);" />
				</div>
			</td>
		</tr>
		<tr class="FormRow">
			<td>File Name:</td>
			<td><c:out value="${image.file_name}" /></td>
		</tr>
		<fmt:parseNumber var="file_size_int" integerOnly="true" type="number" value="${image.file_size / 1024}" />
		<tr class="FormRow">
			<td>File Size:</td>
			<td><c:out value="${file_size_int} KB" /></td>
		</tr>
		<tr class="FormRow">
			<td>Dimensions:</td>
			<td><c:out value="${image.width}" /> x <c:out value="${image.height}" /> px</td>
		</tr>
		<tr>
			<td class="ActionBar" colspan="2">
				<input type="submit" name="cancel" value="Cancel">
			</td>
		</tr>
	</form>
	
</table>

</p>
