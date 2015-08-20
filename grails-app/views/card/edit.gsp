<%--
  Created by IntelliJ IDEA.
  User: Aaron
  Date: 8/20/2015
  Time: 9:23 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Edit a business card!</title>
    <meta name="layout" content="main"/>

</head>

<body>
<h1>Edit card details</h1>

<div id="validationerrors">
    <g:renderErrors bean="${card}"/>
</div>
<g:form controller="card" action="save">
    <g:hiddenField name="id" value="${card.id}"/>
    <table>
        <tr>
            <td>First Name:</td>
            <td>
                <g:textField name="firstName" value="${card.firstName}" size="25"/>
            </td>
            <td>Last Name:</td>
            <td>
                <g:textField name="lastName" value="${card.lastName}" size="30"/>
            </td>
        </tr>
        <tr>
            <td>Company:</td>
            <td>
                <g:textField name="companyName" value="${card.companyName}" size="25"/>
            </td>
            <td>Job Title:</td>
            <td>
                <g:textField name="jobTitle" value="${card.jobTitle}" size="30"/>
            </td>
        </tr>
        <tr>
            <td>Home Phone:</td>
            <td>
                <g:textField name="homePhone" value="${card.homePhone}" size="15"/>
            </td>
            <td>Mobile Phone:</td>
            <td>
                <g:textField name="mobilePhone" value="${card.mobilePhone}" size="15"/>
            </td>
        </tr>
        <tr>
            <td>Work Phone:</td>
            <td>
                <g:textField name="workPhone" value="${card.workPhone}" size="15"/>
            </td>
            <td>Fax: </td>
            <td>
                <g:textField name="faxNumber" value="${card.faxNumber}" size="15"/>
            </td>
        </tr>
        <tr>
            <td>Address Line One:</td>
            <td>
                <g:textField name="addressLineOne" value="${card.addressLineOne}" size="25"/>
            </td>
            <td>Address Line Two:</td>
            <td>
                <g:textField name="addressLineTwo" value="${card.addressLineTwo}" size="30"/>
            </td>
        </tr>
        <tr>
            <td>City:</td>
            <td>
                <g:textField name="addressCity" value="${card.addressCity}" size="25"/>
            </td>
            <td>State:</td>
            <td>
                <g:textField name="addressState" value="${card.addressState}" size="30"/>
            </td>
        </tr>
        <tr>
            <td>Zip Code:</td>
            <td>
                <g:textField name="addressZip" value="${card.addressZip}" size="25"/>
            </td>
            <td>Website:</td>
            <td>
                <g:textField name="websiteUrl" value="${card.websiteUrl}" size="30"/>
            </td>
        </tr>
        <tr>
            <td>Email 1:</td>
            <td>
                <g:textField name="email1" value="${card.email1}" size="25"/>
            </td>
            <td>Email 2:</td>
            <td>
                <g:textField name="email2" value="${card.email2}" size="30"/>
            </td>
        </tr>
        <tr>
            <td>Notes:</td>
            <td>
                <g:textArea name="notes" value="${card.notes}" rows="5" cols="25"/>
            </td>
        </tr>
    </table>
    <g:submitButton name="submit" value="Save"/>
</g:form>

</body>
</html>