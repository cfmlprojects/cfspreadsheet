<!--- read in the file --->
<cfset pathToFile = ExpandPath("someExistingFile.xls") /> 
<cfspreadsheet action="read" 
        src="#pathToFile#"
        query="myQuery" />

<!--- display query results --->
<cfdump var="#myQuery#" label="Query With Default Column Names" />

<!--- specify query column names --->
<cfspreadsheet action="read" 
        columnNames="RecordID,ArtistName, ArtistCode"
        src="#pathToFile#"
        query="myQuery" />

<!--- display query results --->
<cfdump var="#myQuery#" label="Query With Custom Column Names" />

<!--- use header row as column names --->
<cfspreadsheet action="read" 
        headerRow="1"
		excludeHeaderRow="true"
        src="#pathToFile#"
        query="myQuery" />

<!--- display query results --->
<cfdump var="#myQuery#" label="Use Header Row as Column Names" />
