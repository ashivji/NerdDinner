﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<NerdDinner.Models.Dinner>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Delete
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Delete Confirmation</h2>

    <div><p>Please confirm you want to delete the dinner titled: <i><%= Html.Encode(Model.Title) %>?</i></p></div>

    <% using (Html.BeginForm()) { %>
    <input name ="confirmationButton" type="submit" value="Delete" />

    <%} %>
</asp:Content>
