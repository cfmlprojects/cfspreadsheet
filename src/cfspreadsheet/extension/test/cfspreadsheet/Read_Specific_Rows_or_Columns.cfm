<!--- read select rows into CSV --->
<cfset pathToFile = ExpandPath("someExistingFile.xls") /> 
<cfspreadsheet action="read" 
        src="#pathToFile#"
        rows="1-5"
        format="CSV"
        name="csvContent" />

<!--- display results --->
<h3>Rows 1-5 as CSV</h3>
<div class="div">
	NOTE: Rows are always returned in ascending order. 
	This behavior differs from ACF
</div> 
<cfoutput><pre>#csvContent#</pre></cfoutput>

<!--- read select columns into CSV --->
<cfspreadsheet action="read" 
        src="#pathToFile#"
        columns="2,1"
        format="CSV"
        name="csvContent" />

<h3>Columns 2 and 1 as CSV </h3>
<cfoutput><pre>#csvContent#</pre></cfoutput>
