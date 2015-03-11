<%@ Page Title="" Language="C#" MasterPageFile="~/master/Base.Master" AutoEventWireup="true"
    CodeBehind="Pics.aspx.cs" Inherits="prepare_for_wedding.main.Pics" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../js/justified-gallery/jquery-colorbox/colorbox.css" type="text/css"
        rel="Stylesheet" media="all" />
    <link href="../css/justified-gallery/justifiedGallery.css" type="text/css" rel="Stylesheet"
        media="all" />
    <style type="text/css">
        .colorboxEx
        {
            max-width: 900px;
            min-width: 60px;
            margin-left: 255px;
        }
    </style>
    <script type="text/javascript" src="../js/justified-gallery/justifiedGallery.js"></script>
    <script type="text/javascript" src="../js/justified-gallery/jquery-colorbox/jquery.colorbox-min.js"></script>
    <script type="text/javascript">
        $(function () {
            $(".colorboxEx").each(function (i, el) {
                $(el).justifiedGallery({ rel: 'gal' + i }).on('jg.complete', function () {
                    $(this).find('a').colorbox({
                        maxWidth: '80%',
                        maxHeight: '80%',
                        opacity: 0.8,
                        transition: 'elastic',
                        current: ''
                    });
                });
            });
        })
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="formBefore" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="colorboxEx">
        <a href="../img/pics/2010-12-30-第一张~.jpg" title="2010-12-30-第一张~">
            <img alt="2010-12-30-第一张~" src="../img/pics/2010-12-30-第一张~.jpg" />
        </a><a href="../img/pics/2010-12-30-这是准备白我的节奏啊.jpg" title="2010-12-30-这是准备白我的节奏啊">
            <img alt="2010-12-30-这是准备白我的节奏啊" src="../img/pics/2010-12-30-这是准备白我的节奏啊.jpg" />
        </a><a href="../img/pics/2010-12-31-第一个元旦~某人在宿舍没回家.bmp" title="2010-12-31-第一个元旦~某人在宿舍没回家">
            <img alt="2010-12-31-第一个元旦~某人在宿舍没回家" src="../img/pics/2010-12-31-第一个元旦~某人在宿舍没回家.bmp" />
        </a><a href="../img/pics/2011-04-14-自习偷拍.jpg" title="2011-04-14-自习偷拍">
            <img alt="2011-04-14-自习偷拍" src="../img/pics/2011-04-14-自习偷拍.jpg" />
        </a><a href="../img/pics/2012-02-23-有人用美图臭美了.jpg" title="2012-02-23-有人用美图臭美了">
            <img alt="2012-02-23-有人用美图臭美了" src="../img/pics/2012-02-23-有人用美图臭美了.jpg" />
        </a><a href="../img/pics/2012-04-14-帅帅哒~.jpg" title="2012-04-14-帅帅哒~">
            <img alt="2012-04-14-帅帅哒~" src="../img/pics/2012-04-14-帅帅哒~.jpg" />
        </a><a href="../img/pics/2012-06-06-在三号楼顶楼的一间教室.jpg" title="2012-06-06-在三号楼顶楼的一间教室">
            <img alt="2012-06-06-在三号楼顶楼的一间教室" src="../img/pics/2012-06-06-在三号楼顶楼的一间教室.jpg" />
        </a><a href="../img/pics/2012-08-07-倒腾她的刘海.jpg" title="2012-08-07-倒腾她的刘海">
            <img alt="This is the colors I love" src="../img/pics/2012-08-07-倒腾她的刘海.jpg" />
        </a><a href="../img/pics/2012-11-03-游濠河.jpg" title="2012-11-03-游濠河">
            <img alt="2012-11-03-游濠河" src="../img/pics/2012-11-03-游濠河.jpg" />
        </a><a href="../img/pics/2012-11-28脸上被抹了蛋糕.jpg" title="2012-11-28脸上被抹了蛋糕">
            <img alt="2012-11-28脸上被抹了蛋糕" src="../img/pics/2012-11-28脸上被抹了蛋糕.jpg" />
        </a><a href="../img/pics/2012-11-28生日蛋糕.jpg" title="2012-11-28生日蛋糕">
            <img alt="2012-11-28生日蛋糕" src="../img/pics/2012-11-28生日蛋糕.jpg" />
        </a><a href="../img/pics/2012-12-27-这帽子.jpg" title="2012-12-27-这帽子">
            <img alt="2012-12-27-这帽子" src="../img/pics/2012-12-27-这帽子.jpg" />
        </a><a href="../img/pics/2013-02-28-好孤独的样子.JPG" title="2013-02-28-好孤独的样子">
            <img alt="2013-02-28-好孤独的样子" src="../img/pics/2013-02-28-好孤独的样子.JPG" />
        </a><a href="../img/pics/2013-03-12_给我编辫子~.jpg" title="2013-03-12_给我编辫子~">
            <img alt="2013-03-12_给我编辫子~" src="../img/pics/2013-03-12_给我编辫子~.jpg" />
        </a><a href="../img/pics/2013-03-29-哼哼，已经看到好多张白我的照片了！.JPG" title="2013-03-29-哼哼，已经看到好多张白我的照片了！">
            <img alt="2013-03-29-哼哼，已经看到好多张白我的照片了！" src="../img/pics/2013-03-29-哼哼，已经看到好多张白我的照片了！.JPG" />
        </a><a href="../img/pics/2013-06-29_跟林学飞宿舍吃饭！哼哼，两个人聊得真嗨.jpg" title="2013-06-29_跟林学飞宿舍吃饭！哼哼，两个人聊得真嗨">
            <img alt="2013-06-29_跟林学飞宿舍吃饭！哼哼，两个人聊得真嗨" src="../img/pics/2013-06-29_跟林学飞宿舍吃饭！哼哼，两个人聊得真嗨.jpg" />
        </a><a href="../img/pics/2014-05-26-爬狼山.jpg" title="2014-05-26-爬狼山">
            <img alt="2014-05-26-爬狼山" src="../img/pics/2014-05-26-爬狼山.jpg" />
        </a><a href="../img/pics/2014-05-26-显摆.jpg" title="2014-05-26-显摆">
            <img alt="2014-05-26-显摆" src="../img/pics/2014-05-26-显摆.jpg" />
        </a><a href="../img/pics/2014-05-26-啧啧，裙子啊.jpg" title="2014-05-26-啧啧，裙子啊">
            <img alt="2014-05-26-啧啧，裙子啊" src="../img/pics/2014-05-26-啧啧，裙子啊.jpg" />
        </a><a href="../img/pics/2014-06-05-班级聚餐.jpg" title="2014-06-05-班级聚餐">
            <img alt="2014-06-05-班级聚餐" src="../img/pics/2014-06-05-班级聚餐.jpg" />
        </a><a href="../img/pics/2014-06-05-啧啧.jpg" title="2014-06-05-啧啧">
            <img alt="2014-06-05-啧啧" src="../img/pics/2014-06-05-啧啧.jpg" />
        </a><a href="../img/pics/2014-06-08-送回家去了.jpg" title="2014-06-08-送回家去了">
            <img alt="2014-06-08-送回家去了" src="../img/pics/2014-06-08-送回家去了.jpg" />
        </a>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="formAfter" runat="server">
</asp:Content>
