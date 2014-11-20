<%@ Page Title="" Language="C#" MasterPageFile="~/master/Base.Master" AutoEventWireup="true"
    CodeBehind="guest.aspx.cs" Inherits="prepare_for_wedding.main.guest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .divGuestMain
        {
            vertical-align: middle;
            max-width: 640px;
            min-width: 450px;
            padding: 10px;
            margin-left: auto;
            margin-right: auto;
            background-color: rgb(247,247,247);
            filter: progid:DXImageTransform.Microsoft.Shadow(color=#acc6e9,direction=120,strength=3); /*ie*/
            -moz-box-shadow: 2px 2px 10px #acc6e9; /*firefox*/
            -webkit-box-shadow: 2px 2px 10px #acc6e9; /*safari或chrome*/
            box-shadow: 2px 2px 10px #acc6e9; /*opera或ie9*/
        }
        .divAddNewGuestHeader
        {
            font-size: 25px;
            line-height: 30px;
            border-bottom: 1px solid #c3c3c3;
            padding: 10px;
            margin-bottom: 15px;
        }
        .diaAddNewGuestTable
        {
            display: table;
            margin-left: 185px;
            margin-bottom: 15px;
        }
        .diaAddNewGuestTable .row
        {
            display: table-row;
            padding: 6px;
            margin: 4px;
            line-height: 30px;
        }
        .diaAddNewGuestTable .row span
        {
            display: table-cell;
            width: 70px;
            font-size: 18px;
            text-align: right;
            vertical-align: middle;
            padding-right: 5px;
        }
        .diaAddNewGuestTable .row span label
        {
            color: Red;
        }
        .diaAddNewGuestTable .row input
        {
            display: table-cell;
            line-height: 25px;
        }
        .diaAddNewGuestTable .row textarea
        {
            width: 147px;
        }
        .diaAddNewGuestFooter
        {
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="formBefore" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="divGuestMain">
        <div class="divAddNewGuestHeader">
            我要去捧场！
        </div>
        <div class="diaAddNewGuestTable">
            <div class="row">
                <span id="spanName">
                    <label>
                        *</label>姓名：</span><input type="text" id="txtName" />
            </div>
            <div class="row">
                <span id="spanTel">
                    <label>
                        *</label>手机：</span><input type="text" id="txtTel" />
            </div>
            <div class="row">
                <span id="spanEmail">邮箱：</span><input type="text" id="txtEmail" />
            </div>
            <div class="row">
                <span id="spanPostscript">附言：</span><textarea rows="4" id="txtPostscript" placeholder="有什么悄悄话想对新郎新娘说？‘我是来蹭饭的’..."></textarea>
            </div>
        </div>
        <div class="diaAddNewGuestFooter">
            <input type="button" value="提交" id="btnAddNewGuestSubmmit" />
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="formAfter" runat="server">
</asp:Content>
