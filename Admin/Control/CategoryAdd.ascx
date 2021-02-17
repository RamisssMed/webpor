<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CategoryAdd.ascx.cs" Inherits="WebPro.Admin.Control.AddCategory1" %>


<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>

        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h3 class="h3Frist">اضافة بيانات </h3>
                </div>
                <div class="card">
                    <div class="col-md-12">
                        <table cellpadding="3" cellspacing="3" dir="rtl">
                            <tr>
                                <td style="background: none;"></td>
                                <td colspan="3">
                                    <asp:Label ID="laMessage" runat="server" Height="30px"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>التصنيفات </td>
                                <td> <asp:DropDownList ID="DropDownList1" runat="server" Height="30px" Width="50%"></asp:DropDownList>
                                    
                                
                                </td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td style="padding-left:20px;padding-right:20px;">الاسم</td>
                                <td>
                                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtName" ErrorMessage="*" style="color: #FF0000"></asp:RequiredFieldValidator>
                                    &nbsp;</td>
                                <td ;="" dir="rtl" rowspan="6" style="vertical-align:top; text-align: right;">
                                    <asp:Image ID="Image1" runat="server" Height="200px" ImageUrl="~/Admin/Img/P10.JPG" Width="200px" />
                                </td>
                            </tr>
                            <tr>
                                <td style="padding-left:20px;padding-right:20px;">العمر</td>
                                <td>
                                    <asp:TextBox ID="txtAge" runat="server" TextMode="Date"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtAge" ErrorMessage="*" style="color: #FF3300"></asp:RequiredFieldValidator>
                                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtAge" ErrorMessage="( 1950 : 2004)" MaximumValue="1/1/2004" MinimumValue="1/1/1950" style="color: #FF3300" Type="Date"></asp:RangeValidator>
                                </td>
                            </tr>
                            <tr>
                                <td style="padding-left:20px;padding-right:20px;">الجوال</td>
                                <td>
                                    <asp:TextBox ID="txtPhone" runat="server" TextMode="Phone"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtPhone" ErrorMessage="*" style="color: #FF3300"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtPhone" ErrorMessage="**" style="color: #FF3300" ValidationExpression="\d{9}"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td style="padding-left:20px;padding-right:20px;">النوع</td>
                                <td>
                                    <asp:DropDownList ID="DropDownGender" runat="server" AutoPostBack="True" Height="30px" Width="50%">
                                        <asp:ListItem>اختيار</asp:ListItem>
                                        <asp:ListItem>ذكر</asp:ListItem>
                                        <asp:ListItem>انثي</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="DropDownGender" CssClass="auto-style1" ErrorMessage="*" InitialValue="اختيار"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td style="padding-left:20px;padding-right:20px;">الجنسية</td>
                                <td>
                                    <asp:DropDownList ID="DropDownNationality" runat="server" AutoPostBack="True" Height="30px" Width="50%">
                                        <asp:ListItem>اختيار</asp:ListItem>
                                        <asp:ListItem>يمني</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DropDownNationality" CssClass="auto-style1" ErrorMessage="*" InitialValue="اختيار"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td style="padding-left:20px;padding-right:20px;">العنوان</td>
                                <td>
                                    <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtAddress" CssClass="auto-style1" ErrorMessage="*"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td style="padding-left:20px;padding-right:20px;">الملخص</td>
                                <td>
                                    <asp:TextBox ID="txtSummary" runat="server" MaxLength="300" TextMode="MultiLine" Width="100%"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtSummary" CssClass="auto-style1" ErrorMessage="*"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>الصورة</td>
                                <td>
                                    <asp:FileUpload ID="FileUploadPicture" runat="server" />
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="FileUploadPicture" ErrorMessage="*" style="color: #FF3300"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:Button ID="btnSave" runat="server" Text="Save" />
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>
  
        
        <div class="container" >
    <div class="row">

        <div class="card">
            <div class="col-md-10">
            <br />  
            </div>
        </div>
    </div>
</div>


   </ContentTemplate>
    

</asp:UpdatePanel>