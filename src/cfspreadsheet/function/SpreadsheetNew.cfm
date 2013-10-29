<cffunction name="SpreadsheetNew" returntype="ext.cfspreadsheet.cfc.poi" output="false">
	<cfargument name="sheetName" type="string" required="false" />
	<cfargument name="xmlFormat" type="boolean" required="false" default="false" />

	<cfif structKeyExists(arguments, "xmlFormat")>
		<cfset arguments.useXmlFormat = xmlFormat />
	</cfif>
	<!--- TODO: only supporting HSSF (non-xslx format) for now --->
	<cfreturn CreateObject("component", "ext.cfspreadsheet.cfc.poi").init( argumentCollection=arguments ) />
</cffunction>
