Option Explicit
'-- CursorTypeEnum 
Const adOpenStatic = 3

'-- LockTypeEnum
Const adLockReadOnly = 1

Dim objCn
Dim objRs
Dim objField

Dim strSql
Dim strHead
Dim strData

Set objCn = CreateObject("ADODB.Connection")
Set objRs = CreateObject("ADODB.Recordset")

objCn.Open "File Name=.\mydb.udl"

strSql = "select top 10 * from sample.csv;"

objRs.Open strSql,objCn,adOpenStatic,adLockReadOnly

strHead = ""
for each objField In objRs.Fields
	strHead = strHead & objField.Name & vbTab 
Next
WScript.Echo strHead

Do Until objRs.EOF
strData = ""
	for each objField In objRs.Fields
		strData = strData & objField.Value & vbTab 
	Next
	WScript.Echo strData
	objRs.MoveNext
Loop


