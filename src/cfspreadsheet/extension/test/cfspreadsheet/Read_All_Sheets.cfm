<!--- create sample workbook --->
<cfset pathToFile = ExpandPath("workbookWithMultipleSheets.xls") />

<!--- create and populate one sheet --->
<cfset sheet = SpreadSheetNew("FirstSheet") />
<cfset SpreadSheetAddColumn(sheet, "a,b,c") />
<cfset SpreadSheetAddColumn(sheet, "e,f,g") />

<!--- populate a second sheet --->
<cfset SpreadSheetCreateSheet(sheet, "SecondSheet") />
<cfset SpreadSheetSetActiveSheet(sheet, "SecondSheet") />
<cfset SpreadSheetAddColumn(sheet, "foo,bar,baz,qux") />
<cfset SpreadSheetAddColumn(sheet, "quux,corge,grault") />
 
<!--- save sample workbook to disk --->
<cfset SpreadSheetWrite( sheet, pathToFile, true ) />

<!--- read all sheets in the workbook to csv --->
<cfspreadsheet action="read" 
      src="#pathToFile#"
      format="csv"
      readAllSheets="true"
      name="csvContent" />

<!--- display results --->
<h3>Read All Sheets as CSV </h3>
<cfoutput><pre>#csvContent#</pre></cfoutput>

<!--- read all sheets as html --->
<cfspreadsheet action="read" 
      src="#pathToFile#"
      format="html"
      readAllSheets="true"
      name="htmlContent" />

<!--- display results --->
<h3>Read All Sheets as HTML </h3>
<cfdump var="#htmlContent#" />
<cfoutput>
<table border="1">#htmlContent#</table>
</cfoutput>