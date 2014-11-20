<%@ Page Title="" Language="C#" MasterPageFile="~/master/Base.Master" AutoEventWireup="true"
    CodeBehind="address.aspx.cs" Inherits="prepare_for_wedding.main.address" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .divAddressMain
        {
            vertical-align: middle;
            max-width: 1040px;
            min-width: 450px;
            margin-left: 220px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="formBefore" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="divAddressMain">
        <img src="/image/address.png" alt="" title="" />
        <p>
            地址：江苏省南通市崇川区崇川路58号
        </p>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="formAfter" runat="server">
</asp:Content>
