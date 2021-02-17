<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Information.ascx.cs" Inherits="WebPro.Admin.AddInformation" %>




<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h3 class="h3Frist">اضافة معلومات العلاقات العامة </h3>
                </div>
                <div class="col-md-12">
                    <asp:Button ID="Button2" runat="server" class="btn btn-info" Text="اضافة مراسلين" />
                </div>
            </div>
        </div>
    </ContentTemplate>
</asp:UpdatePanel>