<!DOCTYPE html>
<html>

<head>
  <!-- 页面meta -->
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">


  <title>数据 - AdminLTE2定制版</title>
  <meta name="description" content="AdminLTE2定制版">
  <meta name="keywords" content="AdminLTE2定制版">

  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no" name="viewport">


  <!-- 页面meta /-->

  <link rel="stylesheet" href="../../plugins/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="../../plugins/font-awesome/css/font-awesome.min.css">
  <link rel="stylesheet" href="../../plugins/ionicons/css/ionicons.min.css">
  <link rel="stylesheet" href="../../plugins/iCheck/square/blue.css">
  <link rel="stylesheet" href="../../plugins/morris/morris.css">
  <link rel="stylesheet" href="../../plugins/jvectormap/jquery-jvectormap-1.2.2.css">
  <link rel="stylesheet" href="../../plugins/datepicker/datepicker3.css">
  <link rel="stylesheet" href="../../plugins/daterangepicker/daterangepicker.css">
  <link rel="stylesheet" href="../../plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
  <link rel="stylesheet" href="../../plugins/datatables/dataTables.bootstrap.css">
  <link rel="stylesheet" href="../../plugins/treeTable/jquery.treetable.css">
  <link rel="stylesheet" href="../../plugins/treeTable/jquery.treetable.theme.default.css">
  <link rel="stylesheet" href="../../plugins/select2/select2.css">
  <link rel="stylesheet" href="../../plugins/colorpicker/bootstrap-colorpicker.min.css">
  <link rel="stylesheet" href="../../plugins/bootstrap-markdown/css/bootstrap-markdown.min.css">
  <link rel="stylesheet" href="../../plugins/adminLTE/css/AdminLTE.css">
  <link rel="stylesheet" href="../../plugins/adminLTE/css/skins/_all-skins.min.css">
  <link rel="stylesheet" href="../../css/style.css">
  <link rel="stylesheet" href="../../plugins/ionslider/ion.rangeSlider.css">
  <link rel="stylesheet" href="../../plugins/ionslider/ion.rangeSlider.skinNice.css">
  <link rel="stylesheet" href="../../plugins/bootstrap-slider/slider.css">
  <link rel="stylesheet" href="../../plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.css">
</head>

<body class="hold-transition skin-purple sidebar-mini">

<div class="wrapper">

  <!-- 页面头部 -->
    <#include "../common/head.ftl"/>
  <!-- 页面头部 /-->

  <!-- 导航侧栏 -->
    <#include "../common/menu.ftl"/>
  <!-- 导航侧栏 /-->

  <!-- 内容区域 -->
  <!-- @@master = admin-layout.html-->
  <!-- @@block = content -->

  <div class="content-wrapper">

    <!-- 内容头部 -->
    <section class="content-header">
      <h1>
        首页
        <small>-</small>
      </h1>

    </section>
    <!-- 内容头部 /-->

    <!-- 正文区域 -->
    <section class="content">


      <!-- .box-body -->
      <div class="box box-primary">
        <div class="box-header with-border">
          <h3 class="box-title">列表</h3>
        </div>

        <div class="box-body">

          <!-- 数据表格 -->
          <div class="table-box">

            <div class="table-responsive">

              <!--工具栏-->
              <div class="pull-left">
                <div class="form-group form-inline">
                  <div class="btn-group">
                    <button type="button" class="btn btn-default" data-toggle="modal"
                            data-target="#myModal" title="新建"><i class="fa fa-file-o"></i> 新建
                    </button>
                    <button type="button" class="btn btn-default" title="删除"><i
                            class="fa fa-trash-o"></i> 删除
                    </button>
                    <button type="button" class="btn btn-default" title="开启"><i
                            class="fa fa-check"></i> 编辑
                    </button>
                    <button type="button" class="btn btn-default" title="刷新"><i
                            class="fa fa-refresh"></i> 刷新
                    </button>
                  </div>
                </div>
              </div>
              <div class="box-tools pull-right">
                <div class="has-feedback">
                  <input type="text" class="form-control input-sm" placeholder="搜索">
                  <span class="glyphicon glyphicon-search form-control-feedback"></span>
                </div>
              </div>
              <!--工具栏/-->


              <!--数据列表-->
              <table id="dataList" class="table table-bordered table-striped table-hover dataTable">
                <thead>
                <tr>
                  <th class="" style="padding-right:0px;">
                    <input id="selall" type="checkbox" class="icheckbox_square-blue">
                  </th>
                  <th class="text-center">ID</th>
                  <th class="text-center">属地</th>
                  <th class="text-center ">记录人员</th>
                  <th class="text-center">是否是计划任务</th>
                  <th class="text-center sorting">作业时间</th>
                <#-- <th class="text-center">数量</th>
                 <th class="sorting">作业类型</th>-->
                </tr>
                </thead>

                <tbody>

                            <#list pageInfo.list as job>
                                <tr>
                                  <td><input name="ids" type="checkbox"></td>
                                  <td>${job.id}</td>
                                  <td>${job.jobAddr}</td>
                                  <td>${job.recorder}</td>
                                  <td>${job.isPlanjob}</td>
                                  <td>${job.createTime?string('yyyy-MM-dd')}</td>

                                  <td class="text-center">
                                    <button type="button" class="btn bg-olive btn-xs">添加</button>
                                    <button type="button" class="btn bg-olive btn-xs">删除</button>
                                    <button type="button" class="btn bg-olive btn-xs">编辑</button>
                                  </td>
                                </tr>

                            </#list>


                <#--模态框-->

                <div id="myModal" class="modal modal-primary" role="dialog">
                  <div class="modal-dialog modal-lg">
                    <div class="modal-content">

                      <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal"
                                aria-label="Close">
                          <span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title">检查问题</h4>
                      </div>




                        <div class="form-horizontal">
                          <div class="modal-body">
                            <form action="/job/add"   id="jobForm">

                              <div class="box-body">

                                    <div class="form-group">

                                      <label class="col-sm-2 control-label">是否停止作业</label>
                                      <div class="col-sm-5">
                                        <div class="checkbox">
                                          <label><input type="radio" name="isPlanjob"
                                                        checked="checked"> 是</label>
                                          <label><input type="radio" name="isPlanjob"> 否</label>
                                        </div>
                                      </div>
                                    </div>

                                    <div class="form-group">

                                      <div class="col-sm-11">
                                        <div class="input-group">
                                          <span class="input-group-addon">作业许可名称</span>
                                          <select class="form-control">
                                            <option>option 作业1</option>
                                            <option>option 作业2</option>
                                            <option>option 作业3</option>
                                            <option>option 作业4</option>
                                            <option>option 作业5</option>
                                          </select>

                                        </div>
                                      </div>


                                    </div>

                                    <div class="form-group">
                                      <div class="col-sm-5">
                                        <div class="input-group">
                                          <span class="input-group-addon">检查人员</span>
                                          <input id="inputNumber2" type="text" name="recorder"
                                                 class="form-control col-sm-3"
                                                 placeholder="检查员名">
                                        </div>

                                      </div>

                                      <div class="col-sm-6">
                                        <div class="input-group">
                                          <span class="input-group-addon">检查时间</span>

                                          <div class="input-group date">
                                            <div class="input-group-addon">
                                              <i class="fa fa-calendar"></i>
                                            </div>
                                            <input type="text"  name="createTime"
                                                   class="form-control pull-right"
                                                   id="myDateTimePicker"
                                            >
                                          </div>

                                        </div>

                                      </div>

                                    </div>

                                    <div class="form-group">

                                      <div class="col-sm-11">
                                        <div class="input-group">
                                          <span class="input-group-addon">问题描述</span>
                                          <textarea class="form-control" rows="3"
                                                    placeholder="请输入..."></textarea>
                                        </div>
                                      </div>

                                    </div>

                                    <div class="form-group">

                                  <div class="col-sm-11">
                                    <button type="button" class="btn btn-outline" data-dismiss="modal">关闭
                                    </button>
                                    <button type="submit" class="btn btn-outline" id="jobSaveButton" data-dismiss="modal"
                                        onclick="submitJob()">
                                      保存
                                    </button>
                                  </div>

                                </div>


                              </div>

                            </form>
                          </div>
                        </div>




                    </div>
                    <!-- /.modal-content -->
                  </div>

                  <!-- /.modal-dialog -->
                </div>
                <!-- /.modal -->

                <!-- /.modal-dialog -->
            </div>
            <!-- /.modal -->

            </tbody>
            <!--
        <tfoot>
            <tr>
                <th>Rendering engine</th>
                <th>Browser</th>
                <th>Platform(s)</th>
                <th>Engine version</th>
                <th>CSS grade</th>
            </tr>
        </tfoot>-->
            </table>
            <!--数据列表/-->


          </div>

        </div>
        <!-- 数据表格 /-->


      </div>
      <!-- /.box-body -->

      <!-- .box-footer-->
      <div class="box-footer">
        <div class="pull-left">
          <div class="form-group form-inline">
            总共${pageInfo.pages} 页，共${pageInfo.total}条数据。 每页显示
            <select class="form-control">
              <option>2</option>
              <option>3</option>
              <option>4</option>
              <option>5</option>
            </select> 条
          </div>
        </div>

        <div class="box-tools pull-right">
          <ul class="pagination">
            <li>
              <a href="/job/pagelist?page=1&size=${pageInfo.pageSize}" aria-label="Previous">首页</a>
            </li>
            <li><a href="/job/pagelist?page=${pageInfo.pageNum-1}&size=${pageInfo.pageSize}">上一页</a></li>

                            <#list 1..pageInfo.pages as i>
                                <li><a href="/job/pagelist?page=${i}&size=${pageInfo.pageSize}">${i}</a></li>
                            </#list>

            <li><a href="/job/pagelist?page=${pageInfo.pageNum+1}&size=${pageInfo.pageSize}">下一页</a></li>
            <li>
              <a href="/job/pagelist?page=${pageInfo.pages}&size=${pageInfo.pageSize}" aria-label="Next">尾页</a>
            </li>
          </ul>
        </div>

      </div>
      <!-- /.box-footer-->


  </div>


  </section>
  <!-- 正文区域 /-->

</div>
<!-- @@close -->
<!-- 内容区域 /-->

<!-- 底部导航 -->
<footer class="main-footer">
  <div class="pull-right hidden-xs">
    <b>Version</b> 1.0.8
  </div>
  <strong>Copyright &copy; 2014-2017 <a href="http://www.baidu.com">研发部</a>.</strong> All rights reserved.
</footer>
<!-- 底部导航 /-->

</div>

<#include "../common/commonJs.ftl"/>
<script>

  // 设置激活菜单
  function setSidebarActive(tagUri) {
    var liObj = $("#" + tagUri);
    if (liObj.length > 0) {
      liObj.parent().parent().addClass("active");
      liObj.addClass("active");
    }
  }


  //自定义了一个......
  // datetime picker
  function datetimepicker() {
    $('#myDateTimePicker').datetimepicker({
      format: "mm/dd/yyyy - hh:ii",
      autoclose: true,
      todayBtn: true,
      language: 'zh-CN'

    });

    //alert("jjjjjjj");
  };

  function submitJob() {
    $('#jobForm').submit();
  }

  //自定义了一个......
  // datetime picker   模态框激活事件
  $('#myModal').on('shown.bs.modal', function (e) {
    // do something...
    $('#myDateTimePicker').datetimepicker({
      format: "mm/dd/yyyy - hh:ii",
      autoclose: true,
      todayBtn: true,
      language: 'zh-CN'

    });
  })


  $(document).ready(function () {

    // 颜色选取器
    $(".my-colorpicker1").colorpicker();
    $(".my-colorpicker2").colorpicker();

  });


  $(document).ready(function () {
    // 选择框
    $(".select2").select2();
  });


</script>
</body>

</html>