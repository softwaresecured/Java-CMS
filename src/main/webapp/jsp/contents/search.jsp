<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h1 style="text-align: center; color: #d00;">${page['title']}</h1>

<p>
	<c:forEach items="${data}" var="site" varStatus="iterator">
	
		<c:set var="comments" value="0" />
		<c:forEach items="${counts}" var="count">
			<c:if test="${count.page_id == site.id}">
				<c:set var="comments" value="${count.comments_count}" />
			</c:if>
		</c:forEach>
		
		<div class="comment">
		
			<h2><a href="/page?id=<c:out value="${site.id}" />"><c:out value="${site.title}" /></a></h2>
			<span class="comment_date"><img src="images/date.png" /><c:out value="${site.modified_short}" /></span>
			<span class="comment_nick"><img src="images/author.png" /><c:out value="${site.login}" /></span>
			<span class="comments_count">Komentarzy: <b><c:out value="${comments}" /></b></span>
			<section class="comment_text"><c:out value="${site.contents}" escapeXml="true" /></section>
			
		</div>
		
	</c:forEach>
</p>
