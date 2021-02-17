<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/ControlMaster.Master" AutoEventWireup="true" CodeBehind="MinisterCategory.aspx.cs" Inherits="WebPro.Admin.MinisterCategory" %>

<%@ Register Src="~/Admin/Control/Category.ascx" TagPrefix="uc1" TagName="Category" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


   
    <uc1:Category runat="server" ID="Category" />

</asp:Content>
