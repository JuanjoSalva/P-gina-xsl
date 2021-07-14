<% @LANGUAGE=VBScript %>


<HTML>
	<HEAD>
		<TITLE> Ejempo BBDD.ASP </TITLE>
	</HEAD>
	<BODY BGCOLOR = #CCFFFF>
		<!-- #INCLUDE File="ADOVBS.inc" -->
		
		<%
		Dim ObjCon, ObjRs, NumCampos, Campo, RegEncontrado, Apellido

		Apellido = request.form("Apellidos")
		If Apellido <> "" then	
			Set ObjCon = Server.CreateObject("ADODB.Connection")
			Set ObjRs = Server.CreateObject("ADODB.RecordSet")

			ObjCon.Open "DSN=JuanjoS.dsn"
			ObjRs.Open "CursoASP",ObjCon,adOpenStatic,adLockOptimistic,adCmdTable		 
		
			RegEncontrado = False

			DO WHILE NOT ObjRs.Eof
				IF ObjRs("Apellidos") = Apellido then
					RegEncontrado = True
					Response.Write ("El registro ya existe")
					Exit Do
				end if
				ObjRs.MoveNext
			LOOP
			
		
			if Not RegEncontrado then
				ObjRs.addnew
				ObjRs("Nombre") = request.form("Nombre")
				ObjRs("Apellidos") = Apellido
				ObjRs("Direccion") = request.form("Direccion")
				ObjRs("Ciudad") = request.form("Ciudad")
				ObjRs("Provincia") = request.form("Provincia")
				ObjRs("CP") = request.form("CP")
				ObjRs("Telefono") = request.form("Telefono")
				ObjRs.Update				
			End if
			ObjRs.Movefirst
		
			NumCampos = ObjRs.Fields.Count  
			%>
	
			<CENTER>
			<TABLE BORDER = "1">
				<TR>
					<% FOR Campo = 0 TO NumCampos -1 %>
						<TH> <% =ObjRs(Campo).Name %> </TH>
					<% NEXT %> </TR>
				<% DO WHILE NOT ObjRs.Eof%>
					<TR>
						<% FOR Campo = 0 TO NumCampos -1 %>
							<TD><% =ObjRs(Campo) %> </TD>
						<% NEXT %>
					</TR>

					<% ObjRs.MoveNext
				LOOP

				ObjRs.Close
				ObjCon.Close
				%>
			
			</TABLE>
			</CENTER>
		<%
		else
			Response.Write ("Debe escribir apellido")
		End if 
		%>
		
		<A HREF = "InsercionFormulario.html"> Insertar otro </A>		
		
		
	</BODY>	
</HTML>