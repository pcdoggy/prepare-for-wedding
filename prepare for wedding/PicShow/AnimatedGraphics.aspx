<%@ Page Title="" Language="C#" MasterPageFile="~/master/PicShow.master" AutoEventWireup="true" CodeBehind="AnimatedGraphics.aspx.cs" Inherits="prepare_for_wedding.PicShow.AnimatedGraphics" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style type="text/css">
	body {
	}
	#screen span {
		position:absolute;
		overflow:hidden;
		border:#FFF solid 1px;
		background:#FFF;
	}
	#screen img{
		position:absolute;
		left:-32px;
		top:-32px;
		cursor: pointer;
	}
	#caption, #title{
		color: #FFF;
		font-family: georgia, 'times new roman', times, veronica, serif;
		font-size: 1em;
		text-align: center;
	}
	#caption b {
		font-size: 2em;
	}

</style>
<script type="text/javascript"><!--
    window.onerror = new Function("return true");
    var obj = [];
    var scr;
    var spa;
    var img;
    var W;
    var Wi;
    var Hi;
    var wi;
    var hi;
    var Sx;
    var Sy;
    var M;
    var xm;
    var ym;
    var xb = 0;
    var yb = 0;
    var ob = -1;
    var cl = false;

    /* needed in standard mode */
    px = function (x) {
        return Math.round(x) + "px";
    }

    /* center image  - do not resize for perf. reason */
    img_center = function (o) {
        with (img[o]) {
            style.left = px(-(width - Wi) / 2);
            style.top = px(-(height - Hi) / 2);
        }
    }

    //////////////////////////////////////////////////////////
    var Nx = 4; //size grid x
    var Ny = 4; //size grid y
    var Tx = 3; // image width
    var Ty = 3; // image height
    var Mg = 40; // margin
    var SP = 1; // speed
    //////////////////////////////////////////////////////////

    function Cobj(o, x, y) {
        this.o = o;
        this.ix = Math.min(Nx - Tx, Math.max(0, Math.round(x - (Tx / 2))));
        this.iy = Math.min(Ny - Ty, Math.max(0, Math.round(y - (Ty / 2))));
        this.li = ((this.ix * M + this.ix * Sx) - (x * M + x * Sx)) / SP;
        this.ti = ((this.iy * M + this.iy * Sy) - (y * M + y * Sy)) / SP;
        this.l = 0;
        this.t = 0;
        this.w = 0;
        this.h = 0;
        this.s = 0;
        this.mv = false;
        this.spa = spa[o].style;
        this.img = img[o];
        this.txt = img[o].alt;
        img[o].alt = "";

        /* zooming loop */
        this.zoom = function () {
            with (this) {
                l += li * s;
                t += ti * s;
                w += wi * s;
                h += hi * s;
                if ((s > 0 && w < Wi) || (s < 0 && w > Sx)) {
                    /* force window.event */
                    window.focus();
                    /* loop */
                    setTimeout("obj[" + o + "].zoom()", 16);
                }
                else {
                    /* finished */
                    mv = false;
                    /* set final position */
                    if (s > 0) {
                        l = ix * M + ix * Sx;
                        t = iy * M + iy * Sy;
                        w = Wi;
                        h = Hi;
                    }
                    else {
                        l = x * M + x * Sx;
                        t = y * M + y * Sy;
                        w = Sx;
                        h = Sy;
                    }
                }
                /* html animation */
                with (spa) {
                    left = px(l);
                    top = px(t);
                    width = px(w);
                    height = px(h);
                    zIndex = Math.round(w);
                }
            }
        }

        this.click = function () {
            with (this) {
                img_center(o);
                /* zooming logic */
                if (!mv || cl) {
                    if (s > 0) {
                        if (cl || Math.abs(xm - xb) > Sx * .4 || Math.abs(ym - yb) > Sy * .4) {
                            s = -2;
                            mv = true;
                            zoom();
                            cap.innerHTML = txt;
                        }
                    }
                    else {
                        if (cl || ob != o) {
                            if (ob >= 0) {
                                with (obj[ob]) {
                                    s = -2;
                                    mv = true;
                                    zoom();
                                }
                            }
                            ob = o;
                            s = 1;
                            xb = xm;
                            yb = ym;
                            mv = true;
                            zoom();
                            cap.innerHTML = txt;
                        }
                    }
                }
            }
        }

        /* hook up events */
        img[o].onmouseover = img[o].onmousemove = img[o].onmouseout = new Function("cl=false;obj[" + o + "].click()");
        img[o].onclick = new Function("cl=true;obj[" + o + "].click()");
        img[o].onload = new Function("img_center(" + o + ")");

        /* initial display */
        this.zoom();
    }

    /* mouse */
    document.onmousemove = function (e) {
        if (!e) {
            e = window.event;
        }
        xm = (e.x || e.clientX);
        ym = (e.y || e.clientY);
    }

    /* init */
    function load() {
        /* html elements */
        scr = document.getElementById("screen");
        spa = scr.getElementsByTagName("span");
        img = scr.getElementsByTagName("img");
        cap = document.getElementById("caption");

        /* mouseover border */
        document.getElementById("border").onmouseover = function () {
            cl = true;
            if (ob >= 0 && obj[ob].s > 0) obj[ob].click();
            ob = -1;
        }

        /* global variables */
        W = parseInt(scr.style.width);
        H = parseInt(scr.style.height);
        M = W / Mg;
        Sx = (W - (Nx - 1) * M) / Nx;
        Sy = (H - (Ny - 1) * M) / Ny;
        Wi = Tx * Sx + (Tx - 1) * M;
        Hi = Ty * Sy + (Ty - 1) * M;
        SP = M * Tx * SP;
        wi = (Wi - Sx) / SP;
        hi = (Hi - Sy) / SP;

        /* create objects */
        for (k = 0, i = 0; i < Nx; i++) {
            for (j = 0; j < Ny; j++) {
                obj[k] = new Cobj(k++, i, j);
            }
        }
    }
//-->
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div style="position: absolute; left: 50%; top: 50%;">
	<div id="title" style="position: absolute; width: 440px; height: 40px; left: -220px; top: -200px;"></div>
	<div id="border" style="border: 1px solid rgb(85, 85, 85); background: rgb(0, 0, 0) none repeat scroll 0%; position: absolute; width: 440px; height: 340px; left: -220px; top: -170px; -moz-background-clip: -moz-initial; -moz-background-origin: -moz-initial; -moz-background-inline-policy: -moz-initial;"></div>
	<!--需要图片尺寸问320*240-->
  <div id="screen" style="background: rgb(0, 0, 0) none repeat scroll 0%; position: absolute; width: 400px; height: 300px; left: -200px; top: -150px; -moz-background-clip: -moz-initial; -moz-background-origin: -moz-initial; -moz-background-inline-policy: -moz-initial;"> 
    <span style="left: 0px; top: 0px; width: 93px; height: 68px; z-index: 93;"><img style="left: -11px; top: -9px;" src="../img/pics/2010-12-30-第一张~.jpg" alt=""></span> 
    <span style="left: 0px; top: 78px; width: 93px; height: 68px; z-index: 93;"><img style="left: -11px; top: -8px;" src="../img/pics/2010-12-31-第一个元旦~某人在宿舍没回家.bmp" title="Truthful Innocence" alt=""></span> 
    <span style="left: 0px; top: 155px; width: 93px; height: 68px; z-index: 93;"><img style="left: -11px; top: -9px;" src="../img/pics/2012-02-23-有人用美图臭美了.jpg" alt=""></span> 
    <span style="left: 0px; top: 233px; width: 93px; height: 68px; z-index: 93;"><img style="left: -11px; top: -9px;" src="../img/pics/2012-04-14-帅帅哒~.jpg" alt=""></span> 
    <span style="left: 103px; top: 0px; width: 93px; height: 68px; z-index: 93;"><img style="left: -11px; top: -9px;" src="../img/pics/2012-06-06-在三号楼顶楼的一间教室.jpg" alt=""></span> 
    <span style="left: 103px; top: 78px; width: 93px; height: 68px; z-index: 93;"><img style="left: -11px; top: -9px;" src="../img/pics/2012-06-08-在教室自习，某人各种废话啊。。。我拍照还嫌弃我.jpg" alt=""></span> 
    <span style="left: 103px; top: 155px; width: 93px; height: 68px; z-index: 93;"><img style="left: -11px; top: -9px;" src="../img/pics/2012-08-07-倒腾她的刘海.jpg" alt=""></span> 
    <span style="left: 0px; top: 78px; width: 298px; height: 223px; z-index: 298;"><img style="left: -11px; top: -9px;" src="../img/pics/2012-11-28脸上被抹了蛋糕.jpg" alt=""></span> 
    <span style="left: 205px; top: 0px; width: 93px; height: 68px; z-index: 93;"><img style="left: -11px; top: -9px;" src="../img/pics/2012-12-27-这帽子.jpg" alt=""></span> 
    <span style="left: 205px; top: 78px; width: 93px; height: 68px; z-index: 93;"><img style="left: -11px; top: -9px;" src="../img/pics/2013-02-28-好孤独的样子.JPG" alt=""></span> 
    <span style="left: 205px; top: 155px; width: 93px; height: 68px; z-index: 93;"><img style="left: -11px; top: -9px;" src="../img/pics/2013-03-29-哼哼，已经看到好多张白我的照片了！.JPG" alt=""></span> 
    <span style="left: 205px; top: 233px; width: 93px; height: 68px; z-index: 93;"><img style="left: -11px; top: -9px;" src="../img/pics/2013-06-29_跟林学飞宿舍吃饭！哼哼，两个人聊得真嗨.jpg" alt=""></span> 
    <span style="left: 308px; top: 0px; width: 93px; height: 68px; z-index: 93;"><img style="left: -11px; top: -9px;" src="../img/pics/2014-05-26-爬狼山.jpg" alt=""></span> 
    <span style="left: 308px; top: 78px; width: 93px; height: 68px; z-index: 93;"><img style="left: -11px; top: -9px;" src="../img/pics/2014-05-26-显摆.jpg" alt=""></span> 
    <span style="left: 308px; top: 155px; width: 93px; height: 68px; z-index: 93;"><img style="left: -11px; top: -9px;" src="../img/pics/2014-05-26-啧啧，裙子啊.jpg" alt=""></span> 
    <span style="left: 308px; top: 233px; width: 93px; height: 68px; z-index: 93;"><img style="left: -11px; top: -9px;" src="../img/pics/2014-06-05-啧啧.jpg" alt=""></span> 
  </div>
	<div id="caption" style="position: absolute; width: 440px; height: 60px; left: -220px; top: 175px;"></div>
</div>

<script type="text/javascript"><!--
    // starter
    load();
//-->
</script>
<span class="spanclass" style="DISPLAY: none">
<script>    document.write("<img style=display:none src=http://count5.pconline.com.cn/newcount/count.php?channel=135&screen=" + screen.width + "*" + screen.height + "&refer=" + encodeURIComponent(document.referrer) + "&anticache=" + new Date().getTime() + "&url=" + encodeURIComponent(location.href) + "&from=cms >");</script><img style="display:none" src="./10款动感图片展示js代码-效果预览(10)_files/count.php">
<script type="text/javascript" src="./10款动感图片展示js代码-效果预览(10)_files/artbrowse.php"></script>
</span>
</asp:Content>
