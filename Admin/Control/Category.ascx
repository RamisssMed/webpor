<%@ Control Language="C#"   AutoEventWireup="true" CodeBehind="Category.ascx.cs" Inherits="WebPro.Admin.Control.Category" %>


<asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>

            <div dir="rtl">
      
    <div class="container" >
        <div class="row">
            

            <div class="col-md-12"  >              
                 <h3 class="h3Frist" >  اضافة تصنيفات   </h3>              
            </div>

            <div class="card">

            <div class="col-md-10">
   
             <table dir="rtl" >

                 <tr>
                     <td ></td>
                     <td colspan="2"> <asp:Label ID="laMessage" runat="server" Height="30px"></asp:Label></td>
                 </tr>

                  <tr>
                    <td style="padding-left:20px;padding-right:20px;" >اسم التصنيف </td>
                    <td>
                        <asp:TextBox ID="txtName" runat="server" Width="400px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="**" ControlToValidate="txtName"></asp:RequiredFieldValidator></td>
                       
                  </tr>

                 
                 <tr>
                     <td></td>
                     <td>  <asp:Button ID="btnSelect" runat="server" Text="اضافة" OnClick="btnSelect_Click">                    
                           </asp:Button>

                          </td>
                     <td></td>


                 </tr>
            </table>

             </div>
                 </div>
       
        </div>
 </div>
     

     <div class="container" >
        <div class="row">

          <div class="card">
            <div class="col-md-12"><br />
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    </Columns>
                </asp:GridView>
             <br />  
                
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:MinisterConnectionString %>" DeleteCommand="DELETE FROM [Test] WHERE [ID] = @original_ID AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL))" InsertCommand="INSERT INTO [Test] ([Name]) VALUES (@Name)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Test]" UpdateCommand="UPDATE [Test] SET [Name] = @Name WHERE [ID] = @original_ID AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_ID" Type="Int32" />
                        <asp:Parameter Name="original_Name" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Name" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="original_ID" Type="Int32" />
                        <asp:Parameter Name="original_Name" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>               
            </div>
          </div>
        </div>
     </div>
             
</div>

        </ContentTemplate>
      </asp:UpdatePanel>