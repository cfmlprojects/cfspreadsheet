<!--- read the file into CSV --->
<cfset pathToFile = ExpandPath("someExistingFile.xls") /> 
<cfspreadsheet action="read" 
        src="#pathToFile#"
        format="CSV"
        name="csvContent" />

<!--- display results --->
<h3>Read First Sheet as CSV </h3>
<cfoutput><pre>#csvContent#</pre></cfoutput>

<!--- read the file into TAB delimited format --->
<cfspreadsheet action="read" 
        src="#pathToFile#"
        format="TAB"
        name="tabContent" />

<!--- display results --->
<h3>Read First Sheet in TAB delimited format  </h3>
<cfoutput><pre>#tabContent#</pre></cfoutput>

<!--- read the file into PIPE delimited format --->
<cfspreadsheet action="read" 
        src="#pathToFile#"
        format="PIPE"
        name="pipeContent" />

<!--- display results --->
<h3>Read First Sheet in PIPE delimited format  </h3>
<cfoutput><pre>#pipeContent#</pre></cfoutput>
