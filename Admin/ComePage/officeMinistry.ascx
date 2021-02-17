<%@ Control Language="C#" AutoEventWireup="true" CodeFile="officeMinistry.ascx.cs" Inherits="Admin_All_Control_officeMinistry" %>


<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h3 class="h3Frist">مكتب الوزير </h3>
                </div>
                <div class="col-md-12">
                    <asp:Button ID="Button1" runat="server" class="btn btn-info" Text="معاملات داخلية" />
                    <asp:Button ID="Button2" runat="server" class="btndefault" Text="معاملات خارجية" />
                </div>
            </div>
        </div>
    </ContentTemplate>
</asp:UpdatePanel>

