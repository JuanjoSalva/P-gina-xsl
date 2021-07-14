<% @LANGUAGE=VBScript %>
<!--% OPTION EXPLICIT  %-->
<html> 
    <head>
        <title>
            FORO
        </title>
    </head> 
    <body> 

        <%
		Dim ObjCon, ObjRs, NumCampos, Campo, strSQL
		
		response.write ("Esto finciona")
	
		Set ObjCon = Server.CreateObject("ADODB.Connection")*/
		ObjCon.ConnectionString = "DNS = BBDD_BTT"
		Set ObjRs = Server.CreateObject("ADODB.RecordSet")

		/*ObjCon.Open "DSN=BBDD_BTT.dsn"
		ObjRs.Open "BBDD",ObjCon,,,adCmdTable*/
		
		strSQL  = "Select * from Tema"
		ObjRs.Open strSQL, objCon
		
		%>
		
		<table border="1" align ="center"> 
            <tr>
                <th> Tema </th> 
                <th> Fecha </th>
                <th> Usuario </th>
            </tr>  
		<% Do While not ObjRs.Eof  %>
			<tr>
			    <td> <% = ObjRs("Descripcion") %> </td>
				<td> <% = ObjRs("Fecha") %> </td>
				<td> <% = ObjRs("Id_Usuario") %> </td>
			</tr>
			<%
			ObjRs.MoveNext
		Loop
		ObjRs.close
		ObjCon.Close
		%>
		
		</table>
    </body> 
</html>