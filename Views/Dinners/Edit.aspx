﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<NerdDinner.Models.Dinner>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Edit
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Edit</h2>

<script src="<%: Url.Content("~/Scripts/jquery.validate.min.js") %>" type="text/javascript"></script>
<script src="<%: Url.Content("~/Scripts/jquery.validate.unobtrusive.min.js") %>" type="text/javascript"></script>

<% using (Html.BeginForm()) { %>
    <%: Html.ValidationSummary(true) %>
    <fieldset>
        <legend>Dinner</legend>

        <%: Html.HiddenFor(model => model.DinnerID) %>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Title) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Title) %>
            <%: Html.ValidationMessageFor(model => model.Title) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.EventDate) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.EventDate) %>
            <%: Html.ValidationMessageFor(model => model.EventDate) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Description) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Description) %>
            <%: Html.ValidationMessageFor(model => model.Description) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.HostedBy) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.HostedBy) %>
            <%: Html.ValidationMessageFor(model => model.HostedBy) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.ContactPhone) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.ContactPhone) %>
            <%: Html.ValidationMessageFor(model => model.ContactPhone) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Address) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Address) %>
            <%: Html.ValidationMessageFor(model => model.Address) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Country) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Country) %>
            <%: Html.ValidationMessageFor(model => model.Country) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Longitude) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Longitude) %>
            <%: Html.ValidationMessageFor(model => model.Longitude) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Latitude) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Latitude) %>
            <%: Html.ValidationMessageFor(model => model.Latitude) %>
        </div>

        <p>
            <input type="submit" value="Save" />
        </p>
    </fieldset>
<% } %>

<div>
    <%: Html.ActionLink("Back to List", "Index") %>
</div>

</asp:Content>