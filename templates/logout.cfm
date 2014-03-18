<!---
Loop over all the cookies and expire them. In reality, we only
need to expire the CFID and CFTOKEN session identifiers, but
for our purposes, clearing all the cookies is sufficient.
--->
<cfset count = 1>
<cfloop item="name" collection="#cookie#">
    <cfoutput>#count#</cfoutput>
    <cfoutput>#name#</cfoutput>
<!---
Have them expire immediately. This way, when the
response is sent to the browser, all of their cookies
will be cleared.
--->

        <cfset delete_cookie=StructDelete(cookie,"#name#")>
                

    <cfset count++>
</cfloop>
<cfdump var='#cookie#' label="test">
<!--- Redirect back to index page. --->
<cflocation url="../index.cfm" addtoken="false"/>---->
