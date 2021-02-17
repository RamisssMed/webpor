<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/ControlMaster.Master" AutoEventWireup="true" CodeBehind="MinisterCategoryAdd.aspx.cs" Inherits="WebPro.Admin.MinisterCategoryAdd" %>

<%@ Register Src="~/Admin/Control/CategoryAdd.ascx" TagPrefix="uc1" TagName="CategoryAdd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <uc1:CategoryAdd runat="server" ID="CategoryAdd" />

</asp:Content>
