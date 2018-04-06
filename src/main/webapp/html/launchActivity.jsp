<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>发布活动 - meetu</title>

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
                                    <div class="ibox-title" style="border:0;background-color:#44b549;color:white">
                                        <img src="img/logo.jpeg" class="img-circle" style="width:48px;height:48px" alt="profile">
                                        <!-- todo: 把字体调大一点 -->
                                         <strong>发布活动信息 </strong><br>
                                         <small style="color:white">tips: 可以发送链接到电脑，电脑端填写更方便呢</small>

                                    </div>

                                    <div class="ibox-content">
                            <form method="get" class="form-horizontal">
                                <div class="form-group"><label class="col-sm-2 control-label">活动名称</label>

                                    <div class="col-sm-10"><input type="text" class="form-control"></div>
                                </div>
                                <div class="hr-line-dashed"></div>
                                <div class="form-group"><label class="col-sm-2 control-label">活动时间</label>
                                    <div class="col-sm-10"><input type="text" class="form-control"> <span class="help-block m-b-none">可以填写活动开始时间或者活动持续时间段</span>
                                    </div>
                                </div>
                                <div class="hr-line-dashed"></div>
                                <div class="form-group"><label class="col-sm-2 control-label">活动地点</label>
                                    <div class="col-sm-10"><input type="text" class="form-control"> <span class="help-block m-b-none">确保小伙伴们可以顺利抵达目的地，请填写详细位置信息哦</span>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">费用</label>

                                    <div class="col-sm-10">
                                      <div><label style="font-weight:normal"> <input type="radio" checked="" value="option1" id="optionsRadios1" name="optionsRadios" style="margin-top:15px;margin-right:8px">免费</label></div>
                                      <div class="form-inline"><label style="font-weight:normal"> <input type="radio" value="option2" id="optionsRadios2" name="optionsRadios" style="margin-top:15px;margin-right:8px">收费</label><input type="text" placeholder="" class="form-control" style="border:0px;border-bottom:#000000 1px solid;width:110px;margin-left:10px"/></div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">发起人</label>

                                    <div class="col-sm-10">
                                        <div><label style="font-weight:normal"> <input type="radio" checked="" value="option1" id="optionsRadios1" name="optionsRadios" style="margin-top:15px;margin-right:8px">我是发起人</label></div>
                                        <div><label style="font-weight:normal"> <input type="radio" value="option2" id="optionsRadios2" name="optionsRadios" style="margin-top:15px;margin-right:8px">我是票务代理</label></div>
                                        <div><label style="font-weight:normal"> <input type="radio" value="option3" id="optionsRadios3" name="optionsRadios" style="margin-top:15px;margin-right:8px">我是场地提供方</label></div>
                                        <div><label style="font-weight:normal"> <input type="radio" value="option4" id="optionsRadios4" name="optionsRadios" style="margin-top:15px;margin-right:8px">以上都不是</label></div>
                                    </div>
                                </div>

                                <div class="hr-line-dashed"></div>
                                <div class="form-group"><label class="col-sm-2 control-label">活动海报</label>

                                    <div class="col-sm-10">
<!-- 以下为文件上传 -->
                                      <div class="ibox float-e-margins">
                  <div class="ibox-title">
                      <h5>Dropzone Area</h5>
                      <div class="ibox-tools">
                          <a class="collapse-link">
                              <i class="fa fa-chevron-up"></i>
                          </a>
                          <a class="dropdown-toggle" data-toggle="dropdown" href="form_file_upload.html#">
                              <i class="fa fa-wrench"></i>
                          </a>
                          <ul class="dropdown-menu dropdown-user">
                              <li><a href="form_file_upload.html#">Config option 1</a>
                              </li>
                              <li><a href="form_file_upload.html#">Config option 2</a>
                              </li>
                          </ul>
                          <a class="close-link">
                              <i class="fa fa-times"></i>
                          </a>
                      </div>
                  </div>
                  <div class="ibox-content">
                      <form id="my-awesome-dropzone" class="dropzone dz-clickable" action="form_file_upload.html#">
                          <div class="dropzone-previews"></div>
                          <button type="submit" class="btn btn-primary pull-right">Submit this form!</button>
                      <div class="dz-default dz-message"><span>Drop files here to upload</span></div></form>
                      <div>
                          <div class="m text-right"><small>DropzoneJS is an open source library that provides drag'n'drop file uploads with image previews: <a href="https://github.com/enyo/dropzone" target="_blank">https://github.com/enyo/dropzone</a></small> </div>
                      </div>
                  </div>
              </div>
<!-- 以上为文件上传 -->
                                    </div>
                                </div>
                                <div class="hr-line-dashed"></div>
                                <div class="form-group"><label class="col-sm-2 control-label">活动详情</label>

                                    <div class="col-sm-10"><textarea class="note-editor note-editable form-control"></textarea></div>
                                </div>
                                <div class="hr-line-dashed"></div>
                                <div class="form-group"><label class="col-sm-2 control-label">活动须知</label>

                                    <div class="col-sm-10"><textarea class="note-editor note-editable form-control"></textarea></div>
                                </div>
                                  <div class="hr-line-dashed"></div>
                                  <h3>更多活动相关图片...(让用户可以上传更多图片)</h3>

                            </form>
                        </div>

                                </div>







                <div class="footer" style="position:fixed;background-color:#44b549;color:white">
                  <ul class="" style="list-style:none">

                    <li class="col-xs-3">
                      <a href="index.html#" style="color:white">
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
                                    <small style="color:white">匿名匹配</small>

                                </div>
                            </div>
                        </li>
                        <li class="divider"></li>
                    </ul>
                    </li>
                    <li class="col-xs-3">
                      <a class="right-sidebar-toggle" style="color:white">
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
