﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<NerdDinner.Models.Dinner>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Index</h2>

<p>
    <%: Html.ActionLink("Create New", "Create") %>
</p>
<table>
    <tr>
        <th>
            Title
        </th>
        <th>
            EventDate
        </th>
        <th>
            Description
        </th>
        <th>
            HostedBy
        </th>
        <th>
            ContactPhone
        </th>
        <th>
            Address
        </th>
        <th>
            Country
        </th>
        <th>
            Longitude
        </th>
        <th>
            Latitude
        </th>
        <th></th>
    </tr>

<% foreach (var item in Model) { %>
    <tr>
        <td>
            <%: Html.DisplayFor(modelItem => item.Title) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.EventDate) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Description) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.HostedBy) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.ContactPhone) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Address) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Country) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Longitude) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Latitude) %>
        </td>
        <td>
            <%: Html.ActionLink("Edit", "Edit", new { id=item.DinnerID }) %> |
            <%: Html.ActionLink("Details", "Details", new { id=item.DinnerID }) %> |
            <%: Html.ActionLink("Delete", "Delete", new { id=item.DinnerID }) %>
        </td>
    </tr>
<% } %>

</table>

</asp:Content>
