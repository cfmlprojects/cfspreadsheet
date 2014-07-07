<!--- sample data --->
<cfsavecontent variable="sampleData">18,Alice
5,Mark
26,Bob
</cfsavecontent>

<cfset sampleData = trim(sampleData) />

<!--- save it to disk --->
<cfset pathToFile = ExpandPath("writeFromCSV.xls") /> 
<cfspreadsheet action="write" 
    name="sampleData"
    format="CSV"
    fileName="#pathToFile#" 
    overwrite="true" />

<cfdump var="#pathToFile#" label="Successfully Created File" />
