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
            <img />
            <textarea id="txtLeaveAMessage" rows="3"></textarea>
        </div>
        <div class="divWishMainBottom">
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="formAfter" runat="server">
</asp:Content>
