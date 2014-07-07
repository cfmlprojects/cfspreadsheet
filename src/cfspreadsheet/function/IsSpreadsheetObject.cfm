<cffunction name="IsSpreadsheetObject" returntype="boolean" output="false"
			Hint="Returns true if the supplied object is an instance of cfspreadsheet.tag.cfspreadsheet.cfc.poi">
	<cfargument name="testObject" type="any" required="true" />
	
	<cfreturn IsInstanceOf(arguments.testObject, "cfspreadsheet.tag.cfspreadsheet.cfc.poi") />
</cffunction>