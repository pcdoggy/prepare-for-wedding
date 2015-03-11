<%@ Page Title="HY" Language="C#" MasterPageFile="~/master/PicShow.master" AutoEventWireup="true"
    CodeBehind="s-gallery.aspx.cs" Inherits="prepare_for_wedding.PicShow.s_gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>S Gallery: Responsive jQuery Gallery Plugin with CSS3 Animations</title>
    <link rel="stylesheet" href="../css/s-gallery/demo-styles.css" />
    <link rel="stylesheet" href="../css/s-gallery/styles.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="demo-wrapper">
        <!--// Gallery Markup: A container that the plugin is called upon, and two lists for the images (use images with same aspect ratio) //-->
        <div id="gallery-container">
            <ul class="items--small">
                <li class="item"><a href="#">
                    <img alt="2010-12-30-第一张~" src="../img/pics/small-1.png" /></a></li>
                <li class="item"><a href="#">
                    <img alt="2010-12-31-第一个元旦~某人在宿舍没回家" src="../img/pics/small-2.png" /></a></li>
                <li class="item"><a href="#">
                    <img alt="2012-02-23-有人用美图臭美了" src="../img/pics/small-3.png" /></a></li>
                <li class="item"><a href="#">
                    <img alt="2012-04-14-帅帅哒~" src="../img/pics/small-4.png" /></a></li>
                <li class="item"><a href="#">
                    <img alt="2012-06-06-在三号楼顶楼的一间教室" src="../img/pics/small-5.png" /></a></li>
                <li class="item"><a href="#">
                    <img alt="2012-08-07-倒腾她的刘海" src="../img/pics/small-6.png" /></a></li>
                <li class="item"><a href="#">
                    <img src="../img/pics/small-7.png" alt="2012-11-28脸上被抹了蛋糕" /></a></li>
                <li class="item"><a href="#">
                    <img src="../img/pics/small-8.png" alt="2012-12-27-这帽子" /></a></li>
                <li class="item"><a href="#">
                    <img src="../img/pics/small-9.png" alt="2013-02-28-好孤独的样子" /></a></li>
                <li class="item"><a href="#">
                    <img src="../img/pics/small-10.png" alt="2013-03-29-哼哼，已经看到好多张白我的照片了！" /></a></li>
                <li class="item"><a href="#">
                    <img src="../img/pics/small-11.png" alt="2014-05-26-爬狼山" /></a></li>
                <li class="item"><a href="#">
                    <img src="../img/pics/small-12.png" alt="2014-06-05-啧啧" /></a></li>
            </ul>
            <ul class="items--big">
                <li class="item--big"><a href="#">
                    <figure>
                        <img alt="2010-12-30-第一张~" src="../img/pics/2010-12-30-第一张~.jpg" />
                        <figcaption class="img-caption">
              2010-12-30-第一张~
            </figcaption>
                    </figure>
                </a></li>
                <li class="item--big"><a href="#">
                    <figure>
                        <img alt="2010-12-31-第一个元旦~某人在宿舍没回家" src="../img/pics/2010-12-31-第一个元旦~某人在宿舍没回家.bmp" />
                        <figcaption class="img-caption">
              2010-12-31-第一个元旦~某人在宿舍没回家
            </figcaption>
                    </figure>
                </a></li>
                <li class="item--big"><a href="#">
                    <figure>
                        <img alt="2012-02-23-有人用美图臭美了" src="../img/pics/2012-02-23-有人用美图臭美了.jpg" />
                        <figcaption class="img-caption">
              2012-02-23-有人用美图臭美了
            </figcaption>
                    </figure>
                </a></li>
                <li class="item--big"><a href="#">
                    <figure>
                        <img alt="2012-04-14-帅帅哒~" src="../img/pics/2012-04-14-帅帅哒~.jpg" />
                        <figcaption class="img-caption">
              2012-04-14-帅帅哒~
            </figcaption>
                    </figure>
                </a></li>
                <li class="item--big"><a href="#">
                    <figure>
                        <img alt="2012-06-06-在三号楼顶楼的一间教室" src="../img/pics/2012-06-06-在三号楼顶楼的一间教室.jpg" />
                        <figcaption class="img-caption">
              2012-06-06-在三号楼顶楼的一间教室
            </figcaption>
                    </figure>
                </a></li>
                <li class="item--big"><a href="#">
                    <figure>
                        <img alt="2012-08-07-倒腾她的刘海" src="../img/pics/2012-08-07-倒腾她的刘海.jpg" />
                        <figcaption class="img-caption">
              2012-08-07-倒腾她的刘海
            </figcaption>
                    </figure>
                </a></li>
                <li class="item--big"><a href="#">
                    <figure>
                        <img src="../img/pics/2012-11-28脸上被抹了蛋糕.jpg" alt="2012-11-28脸上被抹了蛋糕" />
                        <figcaption class="img-caption">
              2012-11-28脸上被抹了蛋糕
            </figcaption>
                    </figure>
                </a></li>
                <li class="item--big"><a href="#">
                    <figure>
                        <img src="../img/pics/2012-12-27-这帽子.jpg" alt="2012-12-27-这帽子" />
                        <figcaption class="img-caption">
              2012-12-27-这帽子
            </figcaption>
                    </figure>
                </a></li>
                <li class="item--big"><a href="#">
                    <figure>
                        <img src="../img/pics/2013-02-28-好孤独的样子.JPG" alt="2013-02-28-好孤独的样子" />
                        <figcaption class="img-caption">
              2013-02-28-好孤独的样子
            </figcaption>
                    </figure>
                </a></li>
                <li class="item--big"><a href="#">
                    <figure>
                        <img src="../img/pics/2013-03-29-哼哼，已经看到好多张白我的照片了！.JPG" alt="2013-03-29-哼哼，已经看到好多张白我的照片了！" />
                        <figcaption class="img-caption">
              2013-03-29-哼哼，已经看到好多张白我的照片了！
            </figcaption>
                    </figure>
                </a></li>
                <li class="item--big"><a href="#">
                    <figure>
                        <img src="../img/pics/2014-05-26-爬狼山.jpg" alt="2014-05-26-爬狼山" />
                        <figcaption class="img-caption">
              2014-05-26-爬狼山
            </figcaption>
                    </figure>
                </a></li>
                <li class="item--big"><a href="#">
                    <figure>
                        <img src="../img/pics/2014-06-05-啧啧.jpg" alt="2014-06-05-啧啧" />
                        <figcaption class="img-caption">
              2014-06-05-啧啧
            </figcaption>
                    </figure>
                </a></li>
            </ul>
            <div class="controls">
                <span class="control icon-arrow-left" data-direction="previous"></span><span class="control icon-arrow-right"
                    data-direction="next"></span><span class="grid icon-grid"></span><span class="fs-toggle icon-fullscreen">
                    </span>
            </div>
        </div>
    </div>
    <!--end demo-wrapper-->
    <script type="text/javascript" src="../js/s-gallery/plugins.js"></script>
    <script type="text/javascript" src="../js/s-gallery/scripts.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#gallery-container').sGallery({
                fullScreenEnabled: true
            });
        });
  </script>
</asp:Content>
