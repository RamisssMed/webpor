<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Servies.ascx.cs" Inherits="WebPro.Admin.Control.Allinformation1" %>





<asp:UpdatePanel ID="UpdatePanel2" runat="server">
    <ContentTemplate>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h3 class="h3Frist">دليل الخدمات استمارات خاصة </h3>
                </div>
                <div class="col-md-12">
                    <asp:Button ID="Button10" runat="server" class="btn btn-info" OnClick="Button10_Click" Text="تصفية  " />
                </div>
                <div class="col-md-3">
                    <div style="text-align:right ; direction:rtl;">
                        <asp:Button ID="Button1" runat="server" class="btn btn-info" OnClick="Button1_Click" Text="إنشاء صحيفة / مجلة " />
                        <asp:Button ID="Button2" runat="server" class="btndefault" OnClick="Button2_Click" Text=" رؤساء تحرير الصحف " />
                        <asp:Button ID="Button3" runat="server" class="btn btn-info" OnClick="Button3_Click" Text=" صحف الأحزاب والمنظمات " />
                        <asp:Button ID="Button4" runat="server" class="btndefault" OnClick="Button4_Click" Text="منح تصريح إصدار صحيفة " />
                        <asp:Button ID="Button5" runat="server" class="btn btn-info" Height="50px" OnClick="Button5_Click" Text="وزارات أو مؤسسات حكومية " />
                        <asp:Button ID="Button6" runat="server" class="btndefault" OnClick="Button6_Click" Text="توزيع الصحف الخارجية" />
                        <asp:Button ID="Button7" runat="server" class="btn btn-info" OnClick="Button7_Click" Text="مزاولة مهنة " />
                        <asp:Button ID="Button8" runat="server" class="btndefault" OnClick="Button8_Click" Text="الخدمات  إدارة العلاقات العامة" />
                        <asp:Button ID="Button9" runat="server" class="btn btn-info" OnClick="Button9_Click" Text="الخدمات  الإدارة العامة للإعلام" />
                    </div>
                </div>
                <div class="col-md-9">
                    <div>
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                                    <asp:View ID="View1" runat="server">
                                        <asp:Panel ID="Panel1" runat="server" CssClass="showPanel" Visible="False">
                                            <asp:Label ID="Label1" runat="server" Text="إنشاء صحيفة او مجلة "></asp:Label>
                                            <br />
                                            <asp:Label ID="Label7" runat="server" Text="Form 1"></asp:Label>
                                            <br />
                                            <br />
                                            <br />
                                        </asp:Panel>
                                    </asp:View>
                                    <asp:View ID="View2" runat="server">
                                        <asp:Panel ID="Panel2" runat="server" CssClass="showPanel" Visible="False">
                                            <asp:Label ID="Label8" runat="server" Text="إنشاء صحيفة"></asp:Label>
                                            <br />
                                            <asp:Label ID="Label9" runat="server" Text="Form 2"></asp:Label>
                                            <br />
                                            <br />
                                            <br />
                                        </asp:Panel>
                                    </asp:View>
                                    <asp:View ID="View3" runat="server">
                                        <asp:Panel ID="Panel3" runat="server" CssClass="showPanel" Visible="False">
                                            <asp:Label ID="Label10" runat="server" Text="إنشاء صحيفة"></asp:Label>
                                            <br />
                                            <asp:Label ID="Label11" runat="server" Text="Form 3"></asp:Label>
                                            <br />
                                            <br />
                                            <br />
                                        </asp:Panel>
                                    </asp:View>
                                    <asp:View ID="View4" runat="server">
                                        <asp:Panel ID="Panel4" runat="server" CssClass="showPanel" Visible="False">
                                            <asp:Label ID="Label12" runat="server" Text="إنشاء صحيفة"></asp:Label>
                                            <br />
                                            <asp:Label ID="Label13" runat="server" Text="Form 4"></asp:Label>
                                            <br />
                                            <br />
                                            <br />
                                        </asp:Panel>
                                    </asp:View>
                                    <asp:View ID="View5" runat="server">
                                        <asp:Panel ID="Panel5" runat="server" CssClass="showPanel" Visible="False">
                                            <asp:Label ID="Label2" runat="server" Text="إنشاء صحيفة"></asp:Label>
                                            <br />
                                            <asp:Label ID="Label3" runat="server" Text="Form 5"></asp:Label>
                                            <br />
                                            <br />
                                            <br />
                                        </asp:Panel>
                                    </asp:View>
                                    <asp:View ID="View6" runat="server">
                                        <asp:Panel ID="Panel6" runat="server" CssClass="showPanel" Visible="False">
                                            <asp:Label ID="Label4" runat="server" Text="إنشاء صحيفة"></asp:Label>
                                            <br />
                                            <asp:Label ID="Label5" runat="server" Text="Form 6"></asp:Label>
                                            <br />
                                            <br />
                                            <br />
                                        </asp:Panel>
                                    </asp:View>
                                    <asp:View ID="View7" runat="server">
                                        <asp:Panel ID="Panel7" runat="server" CssClass="showPanel" Visible="False">
                                            <asp:Label ID="Label6" runat="server" Text="إنشاء صحيفة"></asp:Label>
                                            <br />
                                            <asp:Label ID="Label14" runat="server" Text="Form 7"></asp:Label>
                                            <br />
                                            <br />
                                            <br />
                                        </asp:Panel>
                                    </asp:View>
                                    <asp:View ID="View8" runat="server">
                                        <asp:Panel ID="Panel8" runat="server" CssClass="showPanel" Visible="False">
                                            <asp:Label ID="Label15" runat="server" Text="إنشاء صحيفة"></asp:Label>
                                            <br />
                                            <asp:Label ID="Label16" runat="server" Text="Form 8"></asp:Label>
                                            <br />
                                            <br />
                                            <br />
                                        </asp:Panel>
                                    </asp:View>
                                    <asp:View ID="View9" runat="server">
                                        <asp:Panel ID="Panel9" runat="server" CssClass="showPanel" Visible="False">
                                            <asp:Label ID="Label17" runat="server" Text="إنشاء صحيفة"></asp:Label>
                                            <br />
                                            <asp:Label ID="Label18" runat="server" Text="Form 9"></asp:Label>
                                            <br />
                                            <br />
                                            <br />
                                        </asp:Panel>
                                    </asp:View>
                                </asp:MultiView>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
                </div>
                <div class="col-md-12">
                </div>
            </div>
        </div>
    </ContentTemplate>
</asp:UpdatePanel>
