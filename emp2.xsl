<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
		<head>
		</head>
		<body>
		<h1 style="text-align:center">Employee Management System</h1>
		<table border="2" align="center">
		<tr>
		<th>ID</th>
		<th>Name</th>
		<th>Age</th>
        <th>Salary</th>
        <th>Email</th>
        <th>MobNum</th>
        <th>Designation</th>
		<th>Promotion</th>
		</tr>
		<xsl:for-each select="Company/Employee">
		<xsl:sort select="Emp_Id"></xsl:sort>
		<tr>
        <td>
		<xsl:value-of select="Emp_Id"></xsl:value-of>
		</td>
		<td>
		<xsl:value-of select="Emp_Name"></xsl:value-of>
		</td>
		<td>
		<xsl:value-of select="Emp_Age"></xsl:value-of>
		</td>
		<td>
		<xsl:value-of select="Emp_Salary"></xsl:value-of>
		</td>
        <td>
		<xsl:value-of select="Emp_Emailid"></xsl:value-of>
		</td>
        <td>
		<xsl:value-of select="Emp_Phonenum"></xsl:value-of>
		</td>
        <td>
		<xsl:value-of select="Emp_Designation"></xsl:value-of>
		</td>
		<td>
		<xsl:if test="Emp_Age" &gt; 50>
		<xsl:value-of select="Promotion">Associate Project Manager</xsl:value-of>
		</xsl:if>
		<xsl:if test="Emp_Age" &lt; 49 && &gt; 40>
		<xsl:value-of select="Promotion">Team Leader</xsl:value-of>
		</xsl:if>
		<xsl:if test="Emp_Age" &lt; 40 >
		<xsl:value-of select="Promotion">Developer</xsl:value-of>
		</xsl:if>
		<td>
		</tr>
		</xsl:for-each>
		</table>
		</body>
		</html>
	</xsl:template>
</xsl:stylesheet>