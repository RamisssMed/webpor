<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WebPro.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Admin/Css/bootstrap.css" rel="stylesheet" />
    <link href="Admin/Css/styletry.css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">




        
   
    <div class="container" >
    <div class="row">
       
           

           
           <div class="cardLogin">
                <div class="col-md-12" style="margin-top:0px;">  
                    <img src="Admin/Img/D.jpg"  width="100%" height="250px"  />
                     
                     <center class="auto-style1">تسجيل الدخول </center> 

            
            <div class="col-md-6" style="float:left;" >   

                <table  dir="rtl" >
                            <tr>
                                <td>   <asp:Label ID="Label4" runat="server" Text="وازاة الاعلام" style="font-size: x-large; text-align: center"></asp:Label>  </td>
                            </tr>

                            <tr>
                             <td>  <img src="Admin/Img/P10.JPG" width="200px" />    </td>
                            </tr>

                    
                            <tr>
                             <td class="text-left">   Email: MohammedAbdullHafid@Gmail.com  </td>
                            </tr>

                    
                    
                            <tr>
                             <td class="text-left">  Mobile: +967 770655464   </td>
                            </tr>

                    
                            <tr>
                             <td class="text-left">    Website: <a href="HTTP://www.Yemen-Media.Gov.Ye ">  www.Yemen-Media.Gov.Ye  </a>  </td>
                            </tr>

                </table>         <br />
                      
                               
            </div>

           

            
             <div class="col-md-6" style="float:right;" >   
              <center><br /> <br />
                   
<table  dir="rtl" >
                        <tr>
                            <td colspan="3" style="text-align: center" dir="rtl">
                                <asp:Label ID="Label1" runat="server" Text=" " style="font-size: x-large; text-align: center"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td dir="rtl" class="text-right">
                                 <div style="width:200px; padding:5px;">
                                <asp:Label ID="Label2" runat="server" Text="Admin اسم المستخدم  "     ></asp:Label>
                          </div>
                                      </td>

                            <td style="margin:2px;" class="text-right">
                                <asp:TextBox ID="txtName" runat="server" placeholder="Username" ValidationGroup="frmLogin" Width="80%" ></asp:TextBox> 
                            </td>

                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="*" ValidationGroup="frmLogin"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr >
                            <td dir="rtl" class="text-right">
                                <div style="width:200px; padding:5px;">
                                <asp:Label ID="Label3" runat="server" Text="123 كلمة المرور"></asp:Label>
                           </div>

                            </td>
                            <td class="text-right" >
                                <asp:TextBox ID="txtPassword" runat="server"  TextMode="Password" placeholder="Password" ValidationGroup="frmLogin" Width="80%" ></asp:TextBox> 
                            </td>

                             <td> <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="txtPassword" ValidationGroup="frmLogin"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
  


                        <tr >
                            <td dir="rtl" class="text-right">
                                <asp:Label ID="Label5" runat="server" Text="نوع المستخدم"></asp:Label>
                                </td>
                            <td class="text-right" >
                                <asp:DropDownList ID="DropDownList1" runat="server" Width="80%">
                                    <asp:ListItem>اختيار</asp:ListItem>
                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                </asp:DropDownList>
                            </td>

                             <td> 
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="DropDownList1" ErrorMessage="*" InitialValue="اختيار" ValidationGroup="frmLogin"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
  


                        <tr>
                            <td colspan="2"  >
                                <center>
                                   
                                <asp:CheckBox ID="CheckBoxRememberMe" CssClass="inline" runat="server" Text="  تذكرني" />

                                   
                         </center>   </td>
                             <td></td>
                        </tr>
   
            <tr>
                <td colspan="3" style="text-align: center" dir="rtl">
                    <asp:Label ID="laMessage" runat="server"></asp:Label>
                </td>

            </tr>



                        <tr>
                            <td colspan="3" style="text-align: center" dir="rtl">
                                &nbsp;
                                <asp:Button ID="btnLogin" runat="server" CssClass="btn-primary" Text="Login" ValidationGroup="frmLogin" Width="30%" OnClick="btnLogin_Click"   />
                            
                            </td>
                        </tr>
                    </table>
             </div>
</center>

            </div>           
           
        </div>
    </div>


</div>

    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:MinisterConnectionString %>" DeleteCommand="DELETE FROM [Login] WHERE [ID] = @original_ID AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([Password] = @original_Password) OR ([Password] IS NULL AND @original_Password IS NULL)) AND (([LoginType] = @original_LoginType) OR ([LoginType] IS NULL AND @original_LoginType IS NULL))" InsertCommand="INSERT INTO [Login] ([Name], [Password], [LoginType]) VALUES (@Name, @Password, @LoginType)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Login]" UpdateCommand="UPDATE [Login] SET [Name] = @Name, [Password] = @Password, [LoginType] = @LoginType WHERE [ID] = @original_ID AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([Password] = @original_Password) OR ([Password] IS NULL AND @original_Password IS NULL)) AND (([LoginType] = @original_LoginType) OR ([LoginType] IS NULL AND @original_LoginType IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_ID" Type="Int32" />
                <asp:Parameter Name="original_Name" Type="String" />
                <asp:Parameter Name="original_Password" Type="String" />
                <asp:Parameter Name="original_LoginType" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="LoginType" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="LoginType" Type="String" />
                <asp:Parameter Name="original_ID" Type="Int32" />
                <asp:Parameter Name="original_Name" Type="String" />
                <asp:Parameter Name="original_Password" Type="String" />
                <asp:Parameter Name="original_LoginType" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
