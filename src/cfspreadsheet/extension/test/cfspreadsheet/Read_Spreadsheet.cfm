<!--- read in the file --->
<cfset pathToFile = ExpandPath("someExistingFile.xls") /> 
<cfspreadsheet action="read" 
    	src="#pathToFile#" 
    	name="MySheet" />

<!--- show the details --->
<cfset info = SpreadSheetInfo(MySheet) />
<cfdump var="#info#" label="Read Spreadsheet From File" />

