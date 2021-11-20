<%@ page isELIgnored="false" language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Event Weekend</title>
<style type="text/css">
     #grad1 {
        	height:50%
            background: lightsteelblue;
            background: linear-gradient(lightsteelblue, lightskyblue);
        }

        body {

            background-repeat: no-repeat;
            background-attachment: fixed;
            background-position: center;

        }

        .header {
            background-color: lightsteelblue;
            
            width: 100%;
            
        }

        .footer {
            position: absolute;
            right: 0;
            bottom: 0;
            left: 0;
            height: 5%;
            text-align: center;
        }
        #content{
            position:absolute;
            top:220;
            left:200;
            text-align:left;
        }

        p {
            margin-left: 20px;
            font-family: 'Courier New', Courier, 'Lucida Sans Typewriter', 'Lucida Typewriter', monospace;
            font-size: 16px;
            font-style: normal;
            font-variant: normal;
            font-weight: bold;
            line-height: 26.4px;
        }

        .boxed {
            width: 500;
            padding: 10px;
            border: 2px solid black;
            margin: 10px;
            align: center;
            
            backgorund-color: lightblue;

        }
        .box{
        text-align:left;
        padding: 10px;
            border: 2px solid black;
            
            margin: 10px;
        }

        .p1 {
            color: white;
        }
    </style>
</head>

<body>
    <div class="header">
        <table>
            <tr>
                <td>
                    <img src="${pageContext.request.contextPath}/resources/images/abcevents.png"  
                                height="120" width="150" style="float:left">
                </td>
                <td>
                    <span style="vertical-align: middle">
                        <h1 style="font-family :Cambria, Cochsin, Georgia, Times, 'Times New Roman', 
                                serif">Enriching Entertainment</h1>
                    </span>
                </td>
            </tr>
            </table>
            
          
            </div>
            <br><br>
            <center>
           <h2>Stall Details</h2>
<table class=boxed>
<tr>
<th class=box>Stall Name</th><th  class=box>Description</th><th class=box>Stall Owner</th>
<th class=box>Contact Number</th>

</tr>
<c:forEach var="stall" items="${stalls}">
			<tr>
				
				<td class=box>${stall.stallName}</td>
				<td class=box>${stall.stallDetails}</td>
				<td class=box>${stall.stallOwner}</td>
				<td class=box>${stall.ownerContact}</td>
			

			</tr>
		</c:forEach>
</table>
			</center>
    	</body>

</html>
