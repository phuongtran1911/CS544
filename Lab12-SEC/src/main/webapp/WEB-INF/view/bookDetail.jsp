<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>${msg} a Book</title>
</head>

<body>
	<c:if test="${msg == 'Update'}">
		<form action="../books/${book.id}" method="post">
	</c:if>
	<c:if test="${msg == 'Add'}">
		<form action="../books" method="post">
	</c:if>
	<table>
		<tr>
			<td>Title:</td>
			<td><input type="text" name="title" value="${book.title}" /> </td>
		</tr>
		<tr>
			<td>ISBN:</td>
			<td><input type="text" name="ISBN" value="${book.ISBN}" /> </td>
		</tr>
		<tr>
			<td>Author:</td>
			<td><input type="text" name="author" value="${book.author}" /> </td>
		</tr>
		<tr>
			<td>Price:</td>
			<td><input type="text" name="price" value="${book.price}" /> </td>
		</tr>
	</table>
	<input type="submit" />
		<sec:csrfInput />
	</form>
	<c:if test="${msg == 'Update'}">
		<form action="delete?id=${book.id}" method="post">
			<button type="submit">Delete</button>
			<sec:csrfInput />
		</form>
	</c:if>
</body>

</html>