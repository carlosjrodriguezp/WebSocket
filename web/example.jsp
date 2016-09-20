<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript">
 
var texting = function() {
 
 var uriWS="ws://localhost:8084/WebSocket/mensaje";
 var miWebsocket= new WebSocket(uriWS);
 console.log (miWebsocket);
 
 miWebsocket.onopen=function(evento) {
 console.log("abierto");
 miWebsocket.send("hola");
 } 
 
 miWebsocket.onmessage=function(evento) {
 
 console.log(evento.data);
 }
 
};
</script>
 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<a href="#" onclick="javascrtipt: texting()">texting</a>
</head>
<body>
 
</body>
</html>