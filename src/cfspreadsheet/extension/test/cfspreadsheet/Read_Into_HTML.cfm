<!--- read the file into HTML --->
<cfset pathToFile = ExpandPath("someExistingFile.xls") /> 
<cfspreadsheet action="read" 
        src="#pathToFile#"
        format="HTML"
        name="htmlContent" />

<!--- display results --->
<h3>Read First Sheet as HTML </h3>
<cfdump var="#htmlContent#">
