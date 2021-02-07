
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Đăng Tin Bán Sản Phẩm Thú Cưng</title>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <script src="js/jquery.min.js"></script>
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />

        <link rel="stylesheet" type="text/css" media="all" href="csschothue/general.css" />
        <link rel="stylesheet" type="text/css" media="all" href="csschothue/style.min.css" />
        <link rel="stylesheet" type="text/css" media="all" href="csschothue/post.css" />
        <link rel="stylesheet" type="text/css" media="all" href="csschothue/basis.css" />



        <meta name="viewport" content="width=device-width,height=device-height,user-scalable=yes, initial-scale=1, minimum-scale=1.0, maximum-scale=3.0" >
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <link href='http://fonts.googleapis.com/css?family=Exo:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>
        <script type="text/javascript" src="js/move-top.js"></script>
        <script type="text/javascript" src="js/easing.js"></script>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.2/css/all.css" />
        <script type="text/javascript">
            jQuery(document).ready(function ($)
            {
                $(".scroll").click(function (event)
                {
                    event.preventDefault();
                    $('html,body').animate({scrollTop: $(this.hash).offset().top}, 1000);
                });
            });
        </script>
        <!--slider-script-->
        <script src="js/responsiveslides.min.js"></script>
        <script>
            $(function ()
            {
                $("#slider1").responsiveSlides({
                    auto: true,
                    speed: 100,
                    namespace: "callbacks",
                    pager: true,
                });
            });
        </script>
        <!--//slider-script-->
        <script>$(document).ready(function (c)
            {
                $('.alert-close').on('click', function (c) {
                    $('.message').fadeOut('slow', function (c) {
                        $('.message').remove();
                    });
                });
            });
        </script>
        <script>
            $(document).ready(function (c) {
                $('.alert-close1').on('click', function (c) {
                    $('.message1').fadeOut('slow', function (c) {
                        $('.message1').remove();
                    });
                });
            });
        </script>
        <style>
            label
            {
                color:black;
            }
            #btnHuyPost:hover , input[type=submit]:hover
            {
                color:aqua;
                background:rgba(0,0,0,0.7);
            }
        </style>
    </head>
    <body fixed style ="color:black">
        <jsp:include page="header.jsp"></jsp:include>

            <link href="/Styles/JqueryFileUpload/Default/jquery.fileupload-ui.css" rel="stylesheet" type="text/css" />
            <form action="DangBaiBanOption" method="post" enctype="multipart/form-data">
                <div id="wrapper" class="">
                    <div class="main set-relative">
                        <div class="row clearfix ">
                            <div class="col-gr-100per">
                                <div id="MainContent_PostNews1_pnDangtin">

                                    <div class="post-title">
                                        <h3  style="text-align: center; color: black" >Đăng Tin Bán Sản Phẩm Thú Cưng
                                        </h3>
                                    </div>
                                    <div class="post-field">
                                        <label class="first" >Thể Loại:(<span class="red-clr">*</span>)</label>
                                        <div class="post-field-option set-relative">
                                            <select name="option_category_name" class="form-control" " >
                                              
                                                <option value="1" selected>Thức Ăn</option>
                                                <option value="2">Phụ Kiện</option>
                                                <option value="3">Thời Trang</option>                                        
                                            </select>
                                            <span style="color: red; position: absolute; line-height: 40px; left: 0; top: 30px; display: none;" id="spanLoaisanpham">Bạn cần nhập loại sản phẩm thú cưng</span>
                                        </div>
                                    </div>
                                    <div class="post-field mg-top-0" style="padding-top: 25px;">
                                        <label class="first" >Giá Cũ:</label>
                                        <input name="option_giacu" type="number" id="txtDiadiem" class="form-control"  />
                                    </div>
                                    <div class="post-field mg-top-0" style="padding-top: 25px;">
                                        <label class="first" >Giá:</label>
                                        <input name="option_gia" type="number" id="txtDiadiem" class="form-control" />
                                    </div>
                                    <div class="post-field mg-top-0" style="padding-top: 25px;">
                                        <label class="first" >Nguồn Gốc:</label>
                                        <input name="option_origin" type="text" id="txtDiadiem" class="form-control"/>
                                    </div>
                                    
                                     <div class="post-field mg-top-0" style="padding-top: 25px;">
                                        <label class="first" >Tình Trạng:</label>
                                        <input name="option_stock" type="text" id="txtDiadiem" class="form-control" />
                                    </div>

                                    <div class="post-field">
                                        <label class="first">Địa Điểm:(<span class="red-clr">*</span>)</label>
                                        <div class="post-field-option">
                                            <input name="option_vitri" type="text" id="txtDiadiem" class="form-control" />
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                    <div style="padding:26px;margin-top:30px;">
                                        
                                    <h4>MÔ TẢ CHI TIẾT</h4>
                                    </div>

                                    <div class="post-field mg-bottom-20">
                                        <label class="first">Tiêu Đề:(<span class="red-clr">*</span>)</label>
                                        <div class="post-field-option">
                                            <input name="option_name"  type="text" maxlength="150" id="txtTieude" class="form-control" />
                                            <span style="color: Red; display: none; margin-top: 2px; float: left;" id="spanTieude">Bạn cần nhập tiêu đề</span>
                                            <span style="color: Red; display: none; margin-top: 2px; float: left;" id="spanLimit">Tiêu đề phải nhập ít nhất 5 chữ!</span>
                                            <span style="color: Red; display: none; margin-top: 2px; float: left;" id="spanMaxCharacter">Tiêu đề không được nhập quá 150 kí tự!</span>
                                        </div>
                                    </div>
                                    <div class="post-field set-relative mg-top-0">
                                        <label class="first">
                                            <span style="letter-spacing: -0.5px">Mô Tả:</span> (<span class="red-clr">*</span>)
                                            <br />
                                            <span class="note" >Lưu ý: tối đa chỉ 3000 kí tự</span>
                                        </label>
                                        <div id="boxarea" class="post-field-option">
                                            <textarea name="option_description" id="tarNoidung" cols="60" rows="5" maxlength="3000" class="form-control" style="padding: 8px 15px 25px;"></textarea>
                                            <span style="color: Red; display: none;" id="spanNoidungmota">Nội dung mô tả không được bỏ trống!</span>
                                            <span style="color: Red; display: none;" id="spanLimited">Nội dung mô tả phải lớn hơn 100 kí tự!</span>
                                            <div id="tarNoidung_counter" class="counter-noidung" >
                                                1/3000 kí tự
                                            </div>
                                        </div>
                                    </div>
                                    <div class="post-field" style="min-height:inherit;">
                                        <label>Hình Ảnh:(*)</label>
                                    </div>
                                    <div class="post-field">
                                        <input name="hinhanh" type="file" style=" width:264px;height:40px;border:1px solid white;padding-top: 7px;border-radius: 4px;" multiple />
                                    </div>
                                    
                                    <div class="clearfix"></div>
                                    <div style="padding:26px;margin-top:30px;">
                                        <h4>THÔNG TIN LIÊN HỆ</h4>
                                    </div>

                                    <div class="post-field mg-bottom-20">
                                        <label class="first">Họ và Tên:(<span class="red-clr">*</span>)</label>
                                        <div class="post-field-option">
                                            <input name="option_hoten" type="text" id="txtHovaten" class="form-control w-390" style="background:rgba(0,0,0,0.4)" />
                                        </div>
                                    </div>                               
                                    <div class="post-field mg-bottom-20">
                                        <label class="first">Số Điện Thoại: (<span class="red-clr">*</span>)</label>
                                        <div class="post-field-option">
                                            <input name="option_sdt" type="number" id="txtHovaten" class="form-control w-390" style="background:rgba(0,0,0,0.4)" />
                                        </div>
                                    </div>
                               
                                    <div class="clear"></div>
                                    <div >
                                        <span>
                                            <input type="submit" style="font-size: 30px;width: 166px;border: 1px solid white;border-radius: 5px;background: rgba(0,0,0,0.4);"  value="Đăng Bài">
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </form>
            <script type="text/javascript">

                $(function ()
                {
                    $('#btnHuyPost').click(function () {
                        if (confirm("Bạn có chắc chắn muốn hủy ?"))
                        {
                            location.reload(true);
                        }
                    })
                })
            </script>




        <jsp:include page="footer.jsp"></jsp:include>

    </body>
</html>
