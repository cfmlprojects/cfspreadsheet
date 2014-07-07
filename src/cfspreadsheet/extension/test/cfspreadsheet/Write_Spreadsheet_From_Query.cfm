<!--- manual query for demo purposes --->
<cfset sampleQuery = QueryNew("") />
<cfset queryAddColumn(sampleQuery, "ID", listToArray("18,5,26")) />
<cfset queryAddColumn(sampleQuery, "Name", listToArray("Alice,Mark,Bob")) />

<!--- export to workbook and save it to disk --->
<cfset pathToFile = ExpandPath("writeFromQuery.xls") /> 
<cfspreadsheet action="write" 
        query="sampleQuery"
        fileName="#pathToFile#" 
        overwrite="true" />

<cfdump var="#pathToFile#" label="Successfully Created File" />
