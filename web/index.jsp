<%--
  Created by IntelliJ IDEA.
  User: Atlantis
  Date: 2019-04-01
  Time: 21:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>index</title>
  </head>
  <body>
  <p>选择要上传的文件：</p><br>
  <form action="accept.jsp" method="post" enctype="multipart/form-data">
    <input type="file" name="boy" size="38">
    <br><input type="submit" value="提交" name="g">
  </form>
  </body>
</html>
