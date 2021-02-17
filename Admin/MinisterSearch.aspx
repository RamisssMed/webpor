<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/ControlMaster.Master" AutoEventWireup="true" CodeBehind="MinisterSearch.aspx.cs" Inherits="WebPro.Admin.MinisterSearch" %>

<%@ Register Src="~/Admin/Control/Search.ascx" TagPrefix="uc1" TagName="Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <uc1:Search runat="server" ID="Search" />

</asp:Content>
