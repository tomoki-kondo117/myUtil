Option Explicit

'//**************************************************************
'//* @procedure cmdSqlCmdQuery_Click
'//**************************************************************
Private Sub cmdSqlCmdQuery_Click
	'-- var Object
	Dim objConn
	Dim objRs
	Dim objField

	'-- var String
	Dim strConnStr
	Dim strSql
	Dim strHtml

	Set objConn = CreateObject("ADODB.Connection")
	Set objRs = CreateObject("ADODB.Recordset")

	strConnStr = "File Name=../conf/csv.udl"
	
	objConn.Open strConnStr

	strSql = f_txa_sql_command.value

	objRs.Open strSql, objConn, adOpenStatic ,adLockReadOnly

	strHtml = "<table border=""3"" cellpadding=""3"" cellspacing=""3"">" & vbCrLf

	strHtml = strHtml & _
		"<tr>" & vbCrLf

	For Each objField In objRs.Fields
		strHtml = strHtml & _
			"<th>" & objField.Name & "</th>" & vbCrLf
	Next

	strHtml = strHtml & _
		"</tr>" & vbCrLf

	Do Until objRs.EOF
		strHtml = strHtml & _
			"<tr>" & vbCrLf

		For Each objField In objRs.Fields
			strHtml = strHtml & _
				"<td>" & objField.Value & "</td>" & vbCrLf
		Next

		strHtml = strHtml & _
			"</tr>" & vbCrLf

		objRs.MoveNext	
	Loop

	strHtml = strHtml & _
		"</table>" & vbCrLf

	document.getElementById("id_view_result").innerHTML = strHtml


	Set objRs = Nothing	
	Set objConn = Nothing	
End Sub

'//**************************************************************
'//* @procedure cmdSqlCmdExec_Click
'//**************************************************************
Private Sub cmdSqlCmdExec_Click
	'-- var Object
	Dim objConn
	Dim objRs
	Dim objField

	'-- var String
	Dim strConnStr
	Dim strSql
	Dim strHtml

	Set objConn = CreateObject("ADODB.Connection")
	Set objRs = CreateObject("ADODB.Recordset")

	strConnStr = "File Name=../conf/csv.udl"
	
	objConn.Open strConnStr

	strSql = f_txa_sql_command.value

	objRs.Open strSql, objConn, adOpenStatic ,adLockReadOnly

	strHtml = "<table border=""3"" cellpadding=""3"" cellspacing=""3"">" & vbCrLf

	strHtml = strHtml & _
		"<tr>" & vbCrLf

	For Each objField In objRs.Fields
		strHtml = strHtml & _
			"<th>" & objField.Name & "</th>" & vbCrLf
	Next

	strHtml = strHtml & _
		"</tr>" & vbCrLf

	Do Until objRs.EOF
		strHtml = strHtml & _
			"<tr>" & vbCrLf

		For Each objField In objRs.Fields
			strHtml = strHtml & _
				"<td>" & objField.Value & "</td>" & vbCrLf
		Next

		strHtml = strHtml & _
			"</tr>" & vbCrLf

		objRs.MoveNext	
	Loop

	strHtml = strHtml & _
		"</table>" & vbCrLf

	document.getElementById("id_view_result").innerHTML = strHtml


	Set objRs = Nothing	
	Set objConn = Nothing	
End Sub