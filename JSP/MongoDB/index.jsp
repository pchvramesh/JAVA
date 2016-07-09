<%--
  Created by IntelliJ IDEA.
  User: Ramesh Kumar
  Date: 7/9/2016
  Time: 11:35 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ page import="com.mongodb.*" %>

<%@ page import="java.net.UnknownHostException"%>


<html>
<head>
    <title>Title</title>
</head>
<body>
<%

    //Scenario 1
    /*This is used to connect to the URI Based DB*/
    String dbURI = "mongodb://dbuser:password@host:port/dbname";
    MongoClient mongoClient = new MongoClient(new MongoClientURI(dbURI));

    //Scenario 2
    /*This is used to ip and port based connection*/
    //MongoClient mongoClient = new MongoClient("host",port);

    try {
        DB db = mongoClient.getDB( "DB Name" );
        DBCollection coll = db.getCollection("Collection Name");

        DBCursor cursor = coll.find();
        int i = 1;

        while (cursor.hasNext()) {
            out.println(cursor.next());
            i++;
        }

    } catch (UnknownHostException e1) {
        e1.printStackTrace();
    }
%>
</body>
</html>
