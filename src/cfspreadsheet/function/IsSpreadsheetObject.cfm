<cffunction name="IsSpreadsheetObject" returntype="boolean" output="false"
			Hint="Returns true if the supplied object is an instance of ext.cfspreadsheet.cfc.poi">
	<cfargument name="testObject" type="any" required="true" />
	
	<cfreturn IsInstanceOf(arguments.testObject, "ext.cfspreadsheet.cfc.poi") />
</cffunction>