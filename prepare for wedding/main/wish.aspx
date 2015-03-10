<%@ Page Title="" Language="C#" MasterPageFile="~/master/Base.Master" AutoEventWireup="true"
    CodeBehind="wish.aspx.cs" Inherits="prepare_for_wedding.main.wish" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="formBefore" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="divWishMain">
        <div class="divWishMainTop">
            祝福。。。
        </div>
        <div class="divWishMainMessage">
            <div>
                <span>祝福内容：</span>
                <asp:TextBox ID="txtLeaveAMessage" runat="server" TextMode="MultiLine"></asp:TextBox></div>
            <div>
                <span>祝福人：</span>
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            </div>
            <div>
                <asp:Button ID="btnSubmitWish" runat="server" Text="赠送祝福" OnClick="btnSubmitWish_Click" /></div>
        </div>
        <div class="divWishMainBottom">
            好多祝福。。。
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="formAfter" runat="server">
</asp:Content>
