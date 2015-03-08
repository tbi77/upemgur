<%-- 
    Document   : new
    Created on : 7 mars 2015, 19:00:17
    Author     : Jon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Upload Page</title>
    </head>
    <body>
        <form action ="UploadFile" method="post" enctype="multipart/form-data">
            Select file: <input type ="file" name="filetoutpload"><br/>
            <input type ="submit" value="Upload File">
        </form>


        <form name="form1" id="form1" action="UploadFile" method="post" enctype="multipart/form-data">
            <input type="hidden" name="hiddenfield1" value="ok">
            Files to upload:
            <br/><br/>
            <input type="file" size="50" name="file1">
            <br/>
            <input type="file" size="50" name="file2">
            <br/>
            <input type="file" size="50" name="file3">
            <br/><br/>
            <input type="submit" value="Upload">
        </form>

    </body>
</html>
