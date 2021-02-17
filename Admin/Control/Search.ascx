<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Search.ascx.cs" Inherits="WebPro.Admin.Control.Search" %>




 <style>
          .h3Frist {
           text-align:center;
           padding-top:15px;                
            border-radius: 5px;
            Height:50px;
            font-size:12px;
            border-right:10px solid #0ff;
            border-left:10px solid #0ff;
           background:#99CCFF;
           font-weight:bold;
         
        }
  
    </style>

<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h3 class="h3Frist">بحث </h3>
                </div>
                <div class="card">
            <br />
                    <div class="col-md-12">
                        <center>
                            <asp:TextBox ID="txtSearch" runat="server" Width="300px"></asp:TextBox>

                        

                            <asp:Button ID="btnSearch" runat="server"  Text="بحث" Width="50px" />
                    <br />
                        </center>
                    </div>
                </div>
            </div>
        </div>
    </ContentTemplate>
</asp:UpdatePanel>



