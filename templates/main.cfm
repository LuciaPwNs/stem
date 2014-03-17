<div id="logo" onclick="window.location.href='index.cfm'"></div>
<div id="search_box">Searching</div>

<div id="meat_and_potatoes">
    <div id="navigation">
        <button type="button" class="nav_button" onclick="window.location.href='index.cfm?application'">Application</button>
        <button type="button" class="nav_button" onclick="window.location.href='index.cfm?employee'">Employee</button>
        <button type="button" class="nav_button" onclick="window.location.href='index.cfm?calendar'">Calendar</button>
        <button type="button" class="nav_button" onclick="window.location.href='index.cfm?performance'">Performance</button>
        <button type="button" class="nav_button" onclick="window.location.href='index.cfm?insurance'">Insurance</button>
        <button type="button" class="nav_button" onclick="window.location.href='index.cfm?retirement'">Retirement</button>
        <button type="button" class="nav_button" onclick="window.location.href='index.cfm?misc'">Misc</button>
    </div>

    <!--this will go away, Its just for testing purposes this is what ids will look like-->
    
    <cfif Session.logged_in eq false>
        <!--If admin is logged in load this admin views-->
        <link rel="stylesheet" type="text/css" href="css/admin.css">
        <cfinclude template="contentAdmin.cfm">
    <cfelse>
        <!--if Employeed is logged in load employee views-->
        <link rel="stylesheet" type="text/css" href="css/employee.css">
        <cfinclude template="contentEmployee.cfm">
        
    </cfif>

</div>