<!--- output file path --->
<cfset pathToFile = ExpandPath("updateExistingWorkbook.xls") /> 

<!--- create sample data --->
<cfset firstQuery = queryNew("")>
<cfset queryAddColumn(firstQuery, "ID", "integer", listToArray("18,5,6")) />
<cfset queryAddColumn(firstQuery, "Title", "varchar", listToArray("Alice,Mark,Bob")) />

<!--- save initial workbook to disk --->
<cfspreadsheet action="write" 
    query="firstQuery"
    sheetName="First Sheet"
    fileName="#pathToFile#" 
    overwrite="true" />

<!--- Export another query to the workbook --->
<cfset secondQuery = queryNew("")>
<cfset queryAddColumn(secondQuery, "Code", "varchar", listToArray("12STO,DARRW,BUSH,RATM")) />
<cfset queryAddColumn(secondQuery, "Name", "varchar", listToArray("12 Stones,Darryl Worley,Bush,Rage Against The Machine")) />

<cfspreadsheet action="update" 
    query="secondQuery"
    sheetName="Second Sheet"
    fileName="#pathToFile#" 
    overwrite="true" />
    
<!--- display updatd workbook details (two sheets) --->
<cfset sheet = SpreadSheetRead(pathToFile) />
<cfset info  = SpreadSheetInfo(sheet) />
<cfdump var="#pathToFile#" label="Updated Workbook Path" />
<cfdump var="#info#" label="Updated Workbook Details" />
