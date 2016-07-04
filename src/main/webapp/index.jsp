<%@ page import="com.google.appengine.api.blobstore.BlobstoreServiceFactory" %>
<%@ page import="com.google.appengine.api.blobstore.BlobstoreService" %>

<%
    BlobstoreService blobstoreService = BlobstoreServiceFactory.getBlobstoreService();
%>


<html>
    <head>
        <title>BlobStore Demo</title>
    </head>
  <center> <b>BlobStore Demo with Codenvy and Google App Engine using <a href="https://cloud.google.com/appengine/docs/java/blobstore/?csw=1" target="_blank">Steps by Google</a></b>
  <br>
  <br>
  <br>
    <body>
        <form action="<%= blobstoreService.createUploadUrl("/upload") %>" method="post" enctype="multipart/form-data">
            <input type="text" name="foo">
            <input type="file" name="myFile">
            <input type="submit" value="Submit">
        </form>
    </body>
   </center>
</html>