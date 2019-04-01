<%@ page import="java.io.IOException" %><%--
  Created by IntelliJ IDEA.
  User: Atlantis
  Date: 2019-04-01
  Time: 21:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import = "java.io.*" %>
<html>
<head>
    <title>accept</title>

</head>
<body>
<%
    try{
        InputStream inputStream = request.getInputStream();
        /*创建文件的目录*/
        File dir = new File("D:/workSpace/IDEAWorkSpace/projectOfFile/jsp_of_file_up_ex1");
        dir.mkdir();
        /*创建文件*/
        File file = new File(dir,"B.txt");
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        byte b[] = new byte[1000];
        int n ;
        while ((n = inputStream.read(b))!=-1){
            fileOutputStream.write(b, 0,n);
        }
        fileOutputStream.close();
        inputStream.close();
        out.print("文件已上传");
    }catch (IOException e){
        out.print("上传失败，错误信息："+e.toString());
    }
%>
</body>
</html>
