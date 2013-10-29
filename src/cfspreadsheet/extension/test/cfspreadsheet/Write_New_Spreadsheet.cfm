<!--- create a new spreadsheet --->
<cfset mySheet = SpreadSheetNew() />

<!--- save it to disk --->
<cfset pathToFile = ExpandPath("writeNewSpreadsheet.xls") /> 
<cfspreadsheet action="write" 
    name="mySheet"
    fileName="#pathToFile#" 
    overwrite="true" />
    
<cfdump var="#pathToFile#" label="Successfully Created File" />