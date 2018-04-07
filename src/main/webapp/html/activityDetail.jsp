<%@ page contentType="text/html; charset=UTF-8" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>活动详情 - meetu</title>

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet">

    <!-- Toastr style -->
    <link href="css/plugins/toastr/toastr.min.css" rel="stylesheet">

    <!-- Gritter -->
    <link href="js/plugins/gritter/jquery.gritter.css" rel="stylesheet">

    <link href="css/animate.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">

</head>

<body style="background-color:white">
    <div id="wrapper">


        <div class="row">
            <div class="col-lg-12">
                                <div class="ibox float-e-margins">
            <div class="col-lg-12" style="padding-left:0;padding-right:0;color:white">
              <div class="contact-box center-version" style="margin:0">

                  <a style="background-color:#44b549">
<%--这里怎么获取到当前网站的根目录？？？--%>
<%--原来的哪些换行符都没有保存下来？怎么处理？--%>
                      <img alt="image" class="" src="http://localhost:8080${activity.logo}" style="height:238px;width:160px">

                  </a>
                  <div class="text-center" style="color:black">

                                <h2>
                                    ${activity.name}
                                </h2>
                  </div>
                  <div class="contact-box-footer" style="color:#676a6c;border-top:0;padding-top:5px;padding-bottom:5px">
                      <div class="m-t-xs btn-group">
                          <button type="button" class="btn btn-default btn-xs" style="width:100px;border-color:#44b549;color:#44b549">感 兴 趣: ${activity.interested}</button>
                          <!-- <a class="btn btn-xs btn-white"><i class="fa fa-envelope"></i> 留言</a>
                          <a class="btn btn-xs btn-white"><i class="fa fa-user-plus"></i> 关注</a> -->
                      </div>
                  </div>

              </div>
          </div>

                                    <div class="ibox-content">

                                            <div class="feed-activity-list" >

                                                <div class="form-inline" >
                                                    <i class="fa fa-calendar"></i> 时间:<p>${activity.date}</p>
                                                </div>

                                                <div class="form-inline">
                                                    <i class="fa fa-map-marker"></i> 地点:<p>${activity.location}</p>
                                                </div>

                                                <div class="form-inline">
                                                    <i class="fa fa-rmb"></i> 费用:<p>${activity.charge}</p>
                                                </div>

                                                <div class="form-inline">
                                                    <i class="fa fa-envelope"></i> 联系主办方:<p>${activity.sponsor}</p>
                                                </div>

                                            </div>

                                            <div class="text-center" style="color:black">

                                                      【活动详情】
                                            </div>
                                            <p>${activity.details}</p>

                                            <div class="text-center" style="color:black">

                                                      【活动须知】
                                            </div>
                                            <p>${activity.tips}</p>

                                      <div class="text-center" style="color:black">

                                        【活动图片】
                                      </div>
                                      <p>此处为图片及图片说明（图片及说明都要居中显示）</p>

                                      <div class="row">
                                <div class="col-lg-12">

                                    <h4>【讨论区】</h4>
                                    <div class="social-feed-box" style="border:0">
                                        <div class="social-avatar">
                                            <a href="article.html" class="pull-left">
                                                <img alt="image" src="img/a1.jpg">
                                            </a>
                                            <div class="media-body">
                                                <a href="article.html#">
                                                    Andrew Williams
                                                </a>
                                                <small class="text-muted">Today 4:21 pm - 12.06.2014</small>
                                            </div>
                                        </div>
                                        <div class="social-body">
                                            <p>
                                                Many desktop publishing packages and web page editors now use Lorem Ipsum as their
                                                default model text, and a search for 'lorem ipsum' will uncover many web sites still
                                                default model text.
                                            </p>
                                        </div>
                                    </div>
                                    <div class="social-feed-box" style="border:0">
                                        <div class="social-avatar">
                                            <a href="article.html" class="pull-left">
                                                <img alt="image" src="img/a2.jpg">
                                            </a>
                                            <div class="media-body">
                                                <a href="article.html#">
                                                    Michael Novek
                                                </a>
                                                <small class="text-muted">Today 4:21 pm - 12.06.2014</small>
                                            </div>
                                        </div>
                                        <div class="social-body">
                                            <p>
                                                Many desktop publishing packages and web page editors now use Lorem Ipsum as their
                                                default model text, and a search for 'lorem ipsum' will uncover many web sites still
                                                default model text, and a search for 'lorem ipsum' will uncover many web sites still
                                                in their infancy. Packages and web page editors now use Lorem Ipsum as their
                                                default model text.
                                            </p>
                                        </div>
                                    </div>
                                    <div class="social-feed-box" style="border:0">
                                        <div class="social-avatar">
                                            <a href="article.html" class="pull-left">
                                                <img alt="image" src="img/a3.jpg">
                                            </a>
                                            <div class="media-body">
                                                <a href="article.html#">
                                                    Alice Mediater
                                                </a>
                                                <small class="text-muted">Today 4:21 pm - 12.06.2014</small>
                                            </div>
                                        </div>
                                        <div class="social-body">
                                            <p>
                                                Many desktop publishing packages and web page editors now use Lorem Ipsum as their
                                                default model text, and a search for 'lorem ipsum' will uncover many web sites still
                                                in their infancy. Packages and web page editors now use Lorem Ipsum as their
                                                default model text.
                                            </p>
                                        </div>
                                    </div>
                                    <div class="social-feed-box" style="border:0">
                                        <div class="social-avatar">
                                            <a href="article.html" class="pull-left">
                                                <img alt="image" src="img/a5.jpg">
                                            </a>
                                            <div class="media-body">
                                                <a href="article.html#">
                                                    Monica Flex
                                                </a>
                                                <small class="text-muted">Today 4:21 pm - 12.06.2014</small>
                                            </div>
                                        </div>
                                        <div class="social-body">
                                            <p>
                                                Many desktop publishing packages and web page editors now use Lorem Ipsum as their
                                                default model text, and a search for 'lorem ipsum' will uncover many web sites still
                                                in their infancy. Packages and web page editors now use Lorem Ipsum as their
                                                default model text.
                                            </p>
                                        </div>
                                    </div>


                                </div>

                              <div class="col-lg-12">





                <div class="col-lg-12">
                  <textarea class="note-editor note-editable form-control"></textarea>
                  <a href="mailbox.html" class="btn btn-sm btn-primary pull-right" data-toggle="tooltip" data-placement="top" title="Send" style="background-color:#44b549;margin-top:10px;margin-bottom:30px"><i class="fa fa-reply"></i> 发布留言</a>
                </div>








                              </div>
                            </div>


                                    </div>
                                </div>






                <div class="footer" style="position:fixed;background-color:#44b549;color:white">
                  <ul class="" style="list-style:none">

                    <li class="col-xs-3">
                      <a href="index_meetu.html#" style="color:white">
                        <i class="fa fa-institution" style="padding-left:6px"></i><br>首页
                      </a>
                    </li>
                    <li class="col-xs-3">

                      <a href="login.html" style="color:white">
                        <i class="fa fa-group" style="padding-left:11px"></i><br>meetu
                      </a>
                    </li>


                    <li class="col-xs-3 dropup">
                      <a href="login.html" class="dropup-toggle count-info" data-toggle="dropdown" style="color:white">
                        <i class="fa fa-rocket"  style="padding-left:9px"></i><br>X-Lab
                      </a>
                      <ul class="dropdown-menu dropdown-messages" style="padding-bottom:0;min-width:0;margin-bottom:10px;background-color:#44b549">
                        <li>
                            <div class="dropdown-messages-box">

                                <div class="media-body">
                                    <small style="color:white">10点10分</small>
                                </div>
                            </div>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <div class="dropdown-messages-box">

                                <div class="media-body ">
                                    <small style="color:white"> 告  白 墙</small>

                                </div>
                            </div>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <div class="dropdown-messages-box">

                                <div class="media-body ">
                                    <small style="color:white">历史推文</small>

                                </div>
                            </div>
                        </li>
                        <li class="divider"></li>
                    </ul>
                    </li>
                    <li class="col-xs-3">
                      <a href="profile_meetu.html" class="right-sidebar-toggle" style="color:white">
                        <i class="fa fa-align-justify"></i><br>我
                      </a>
                    </li>
                  </ul>
                    <!-- <div class="pull-right">
                        10GB of <strong>250GB</strong> Free.
                    </div>
                    <div>
                        <strong>Copyright</strong> Example Company &copy; 2014-2015
                    </div> -->
                </div>
            </div>
        </div>





    </div>

    <!-- Mainly scripts -->
    <script src="js/jquery-2.1.1.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

    <!-- Flot -->
    <script src="js/plugins/flot/jquery.flot.js"></script>
    <script src="js/plugins/flot/jquery.flot.tooltip.min.js"></script>
    <script src="js/plugins/flot/jquery.flot.spline.js"></script>
    <script src="js/plugins/flot/jquery.flot.resize.js"></script>
    <script src="js/plugins/flot/jquery.flot.pie.js"></script>

    <!-- Peity -->
    <script src="js/plugins/peity/jquery.peity.min.js"></script>
    <script src="js/demo/peity-demo.js"></script>

    <!-- Custom and plugin javascript -->
    <script src="js/inspinia.js"></script>
    <script src="js/plugins/pace/pace.min.js"></script>

    <!-- jQuery UI -->
    <script src="js/plugins/jquery-ui/jquery-ui.min.js"></script>

    <!-- GITTER -->
    <script src="js/plugins/gritter/jquery.gritter.min.js"></script>

    <!-- Sparkline -->
    <script src="js/plugins/sparkline/jquery.sparkline.min.js"></script>

    <!-- Sparkline demo data  -->
    <script src="js/demo/sparkline-demo.js"></script>

    <!-- ChartJS-->
    <script src="js/plugins/chartJs/Chart.min.js"></script>

    <!-- Toastr -->
    <script src="js/plugins/toastr/toastr.min.js"></script>


    <script>

    </script>
    <script>
        (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
            (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
                m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
        })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

        ga('create', 'UA-4625583-2', 'webapplayers.com');
        ga('send', 'pageview');

    </script>
</body>
</html>
