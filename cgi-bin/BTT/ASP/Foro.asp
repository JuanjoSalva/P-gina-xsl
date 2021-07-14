<% @LANGUAGE = VBScript %>

<html> 
    <head>
        <title>
            FORO
        </title>
		<LINK REL= "StyleSheet" HREF = "../CSS/Hoja1.css" TYPE = "Text/css"/>
		<%option explicit%>

		
		
		
		

		<script language="VBScript type="text/vbscript">
		Sub RellenarMensajes1(tema)
			MsgBox "El Id_Tema es: " & tema
		End Sub
		</script>

		
		
		
		
    </head> 

    <body> 
		<!-- #INCLUDE File="ADOVBS.inc" -->
        <%
		
		Dim ObjCon, ObjCon1, ObjRs, ObjRs1, ObjRs2, SQL, Mensaje, Contador, Id_Usu, Id_Tema, Id_Men, Men
		
		'Empieza a cargar la tabla de los temas
		Set ObjCon = Server.CreateObject("ADODB.Connection")
		ObjCon.ConnectionString = "DSN=BBDD_BTT"
		ObjCon.Open
		
		Set ObjRs = Server.CreateObject("ADODB.RecordSet")
		ObjRs.ActiveConnection = ObjCon
		ObjRs.Source = "Temas"
		ObjRs.Open
		
		
		response.write "<center><font color =blue size=16pt>TEMAS</font></center>"
		 %>
		<table border="1" align ="center" width = "80%"> 
			<tr>
				<th> Tema </th> 
				<th> Fecha </th>
				<th> Usuario </th>
			</tr>
		<%
		DO WHILE NOT ObjRs.Eof
			Id_Tema = ObjRs("Id_Tema") 
			Id_Usu = ObjRs("Id_Usuario") %>
			
			<tr>
				<td>
					<a href = "#Mensaje"> 
						
						<input type="button" name="RellenarMensaje" Value="<%=ObjRS("Descripcion")%>" onclick="RellenaMensajes1('hola')" style='width:200px; height:25px'/>
						<!--input type="button" name="RellenarMensaje" Value="<%=ObjRS("Descripcion")%>" onclick="RellenaMensajes1('hola')" language="vbscript" style='width:200px; height:25px'/-->
						<!--input type="button" name="RellenarMensaje" Value="<%=ObjRS("Descripcion")%>" onclick="VBScript:RellenarMensajes1()" style='width:200px; height:25px'/-->
						<!--td onclick="RellenarMensajes1()"-->
					</a> 
				</td> 
				
				<td> 
					<% = ObjRs("Fecha") %> 
				</td> 

				<%
				
				Set ObjRs1 = Server.CreateObject("ADODB.RecordSet")
				ObjRs1.ActiveConnection = ObjCon
				SQL = "SELECT Usuario FROM Usuarios where Id_Usuario = '" & ObjRs("Id_Usuario") & "'"
				Set ObjRs1 = ObjCon.Execute(SQL)
								
				DO WHILE NOT ObjRs1.Eof
					%>
					    <td>	
							<%= ObjRs1("Usuario") %> 
						</td> 
					<%
					ObjRs1.MoveNext
				LOOP
				
				ObjRs1.close
				set ObjRs1= nothing				
				%>
			</tr>
		<%
			ObjRs.MoveNext
		LOOP
		
		ObjRs.close		
		set ObjRs = nothing
		%>
		</table>
		
		
		
		
		
		
		
		
		
		<br>
		<br>
		
		<a name = "Mensaje"> <center><font color="blue" size="16pt">MENSAJES</font></center> </a>
		<table border="1" align ="center" width = "80%">
				<tr>
					<th> Mensajes </th> 
				</tr>
				<%
				Call RellenarMensajes(1)
				'***************************************************
				'Funcion que rellena la Tabla de Mensajes según se 
				'seleccione un tema u otro o el primero al cargar la página
				'***************************************************
				Function RellenarMensajes(Tema)     
					'Set ObjCon = Server.CreateObject("ADODB.Connection")
					'ObjCon.ConnectionString = "DSN=BBDD_BTT"
					'ObjCon.Open
					
					Set ObjRs2 = Server.CreateObject("ADODB.RecordSet")
					ObjRs2.ActiveConnection = ObjCon
					SQL = "SELECT Mensaje FROM Mensajes where Id_Tema = '" & Tema & "'"
					Set ObjRs2 = ObjCon.Execute(SQL)
					
					DO WHILE NOT ObjRs2.Eof
						%>
						<tr>
							<td>
								<% = ObjRs2("Mensaje")%>
							</td> 
						</tr>
						<%
						ObjRs2.MoveNext
					LOOP
					
					ObjRs2.close
					set ObjRs2 = nothing
					ObjCon.Close
					set ObjCon= nothing
				End function
				'*********************************************************
				'*********************************************************
				%>
		</table>
		
		<%
		'*****************************************************************
		'*****************************************************************
		'Navegador de Mensajes
		'*****************************************************************
		'*****************************************************************
		%>
		<div class = "parrafo margen3 flota" align = "right">
			<input type="button" value="Anterior"/>
		</div>
		
		<div class = "parrafo margen4 noflota" align = "right">
			<input type="button" value ="Siguiente">
		</div>
		
		<%
		'*****************************************************************
		'*****************************************************************
		'Formulario para insertar Nuevo Mensaje en el tema actual.
		'*****************************************************************
		'*****************************************************************
		%>
		<div class = "parrafo">
			<form action = "http://localhost/ASP/Foro.ASP" method="post">
				<fieldset>
					<legend > <font color = "red" size = "3"> Mensaje </font> </legend>
						Nuevo Mensaje:<br/>
							<textarea ROWS = 3 COLS = 70 name = "Mensaje"></textarea>
				</FIELDSET>
				
				<fieldset>
					<legend > <font color = "red" size = "3"> Acciones </font> </legend>
					    <INPUT NAME="InsertarMensaje" TYPE="BUTTON" VALUE="Insertar Mensaje" OnClick='InsertarMensaje"Id_Usu,Id_Tema"'>
						<INPUT type="reset"  value= "Cancelar">
						<!--input type="submit"  value= "InsertarMensaje('Id_Usu', 'Id_Tema')"-->
						<!--input type="reset"  value= "Cancelar"-->

				</fieldset>
		</div>
		<%
		'*****************************************************************
		'*****************************************************************
		'Formulario para insertar Nuevo Tema.
		'*****************************************************************
		'*****************************************************************
		%>
		<div class = "parrafo">
			<form action = "http://localhost/ASP/Foro.ASP" method="post">
				<fieldset>
					<legend > <font color = "red" size = "3"> Tema </font> </legend>
						Nuevo Tema:<br/>
							<textarea ROWS = 3 COLS = 70 name = "Tema"></textarea>
				</FIELDSET>
				
				<fieldset>
					<legend > <font color = "red" size = "3"> Acciones </font> </legend>
						<INPUT NAME="InsertarTema" TYPE="BUTTON" VALUE="Insertar Tema" OnClick='InsertarTema"Id_Usu"'>
						<INPUT type="reset"  value= "Cancelar">
						<!--input type="submit"  value= "InsertarTema('Id_Usu')"-->
						<!--input type="reset"  value= "Cancelar"-->

				</fieldset>
		</div>
		
		
		
		<% function  InsertarMensaje(Id_Usu1, Id_Tema1)
				Dim Mensaje
				msgbox("Insertando mensaje")
				If request.form("Mensaje") <> "" then	
					If Id_Tema <> "" then
						Set ObjCon = Server.CreateObject("ADODB.Connection")
						ObjCon.Open "DSN=BBDD_BTT"
						ObjCon.Open
						
						'Calculamos el ID_Mensaje
						Contador =0
						Set ObjRs2 = Server.CreateObject("ADODB.RecordSet")
						ObjRs2.ActiveConnection = ObjCon
						SQL= "Select Id_Mensaje from Mensajes where Id_Tema = " & Id_Tema1
						Set ObjRs2 = ObjCon.Execute(SQL)
						Do while not RegRs2.Eof
							Contador = Contador + 1
							ObjRs2.MoveNext
						Loop
						ObjRs2.Close
						ObjRs2 = Nothing
						Id_Mensaje = Contador
						
						'Insertamos el Mensaje
						Mensaje = request.form("Mensaje")
						Set ObjRs1 = Server.CreateObject("ADODB.RecordSet")
						ObjRs1.ActiveConnection = ObjCon
						SQL= "Insert Into Mensajes (Id_Usuario, Id_Tema, Id_Mensaje, Mensaje) values(Id_Usu1, Id_Tema1, Id_Menensaje, Mensaje)"
						Set ObjRs1 = ObjCon.Execute(SQL)
						
					Else
						
						Msgbox ("Debe introducir un mensaje")
					End If
				else
					Msgbox ("No ha seleccionado Tema en el que crear Mensaje")
				end if	

				ObjRs1.Close
				ObjRs1 = Nothing				
		   end function		   
		%>
		
		
		<% function  InsertarTema(Id_Usu1)
			Dim Fecha, Tema
			msgbox("Insertando Tema")
			
			If request.form("Tema") <> "" then	
				Set ObjCon = Server.CreateObject("ADODB.Connection")
				ObjCon.Open "DSN=BBDD_BTT"
				ObjCon.Open
				
				'Calculamos el ID_Tema
				Contador =0
				Set ObjRs2 = Server.CreateObject("ADODB.RecordSet")
				ObjRs2.ActiveConnection = ObjCon
				SQL= "Select Id_Tema from Temas"
				Set ObjRs2 = ObjCon.Execute(SQL)
				Do while not RegRs2.Eof
					Contador = Contador + 1
					ObjRs2.MoveNext
				Loop
				ObjRs2.Close
				ObjRs2 = Nothing
				Id_Tema = Contador
				Fecha = Date( )

				'Insertamos el Tema
				Tema = request.form("Mensaje")
				Fecha
				Set ObjRs1 = Server.CreateObject("ADODB.RecordSet")
				ObjRs1.ActiveConnection = ObjCon
				SQL= "Insert Into Temas (Id_Tema, Fecha, Id_Usuario, Descripcion) values(Id_Tema, Fecha, Id_Usu1, Tema)"
				Set ObjRs1 = ObjCon.Execute(SQL)
		else
			Msgbox ("No ha escrito el Tema")
		end if
		ObjRs1.Close
		ObjRs1 = Nothing		
   end function		   
		   
	%>

		
		
		
    </body> 
</html>