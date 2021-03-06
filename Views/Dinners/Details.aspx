﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<NerdDinner.Models.Dinner>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Details
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Details</h2>

<%= Html.ActionLink("Back to List", "Index", new { id=Model.DinnerID })%> |

<h2><%=Html.Encode(Model.Title) %></h2>
<p>
<strong>When:</strong>
<%=Model.EventDate.ToString() %>
 
<strong>@</strong>
<%=Model.EventDate.ToString() %>
</p>
<p>
<strong>Where:</strong>
<%=Html.Encode(Model.Address) %>,
<%=Html.Encode(Model.Country) %>
</p>
<p>
<strong>Description:</strong>
<%=Html.Encode(Model.Description) %>
</p>      
<p>
<strong>Organizer:</strong>
<%=Html.Encode(Model.HostedBy) %>
(<%=Html.Encode(Model.ContactPhone) %>)
</p>
 
<%= Html.ActionLink("Edit Dinner", "Edit", new { id=Model.DinnerID })%> |
<%= Html.ActionLink("Delete Dinner","Delete", new { id=Model.DinnerID})%>   

</asp:Content>
