<%--
  Created by IntelliJ IDEA.
  User: Aaron
  Date: 8/19/2015
  Time: 4:15 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>It's business time</title>
</head>

<body>
    <div class="container-fluid">
        <g:link controller="card" action="edit">Create a new card!</g:link>
        <h1>Contacts:</h1>
        <g:each in="${cards}" var="card">
            <div style="border:solid; background-color: lightgrey; margin: auto; padding: 1%; text-align:center">
                <b>${card.firstName} ${card.lastName}</b>
                <br/>
                ${card.jobTitle}, ${card.companyName}
                <br/><br/>
                <g:if test="${card.homePhone != null}">Home Phone: ${card.homePhone}</g:if> &nbsp&nbsp&nbsp <g:if
                        test="${card.mobilePhone != null}">Mobile: ${card.mobilePhone}</g:if>
                <br/>
                <g:if test="${card.workPhone != null}">Work Phone: ${card.workPhone}</g:if> &nbsp&nbsp&nbsp <g:if
                        test="${card.faxNumber != null}">Fax: ${card.faxNumber}</g:if>
                <br/> <br/>
                <g:if test="${card.addressLineOne != null}">${card.addressLineOne}</g:if> <g:if
                    test="${card.addressLineTwo != null}"><br/>${card.addressLineTwo}</g:if>
                <br/>
                <g:if test="${card.addressCity != null}">${card.addressCity}</g:if><g:if
                        test="${card.addressState != null}">, ${card.addressState}</g:if><g:if
                        test="${card.addressZip != null}">${card.addressZip}</g:if>
                <br/> <br/>
                <g:if test="${card.email1 != null}">Email 1: <g:link
                        url="mailto:${card.email1}">${card.email1}</g:link></g:if> &nbsp&nbsp&nbsp <g:if
                        test="${card.email2 != null}">Email 2: <g:link
                            url="mailto:${card.email2}">${card.email2}</g:link></g:if>
                <br/>
                <g:if test="${card.websiteUrl != null}">Website: <g:link
                        url="${card.websiteUrl}">${card.websiteUrl}</g:link></g:if>
                <br/>
                <g:if test="${card.notes != null}">Notes: ${card.notes}</g:if>
            </div>

            <p><g:link controller="card" action="edit" id="${card.id}">Edit this card</g:link> &nbsp&nbsp&nbsp <g:link controller="card" action="delete" id="${card.id}">Delete this card</g:link></p>
        </g:each>
    </div>

</body>
</html>