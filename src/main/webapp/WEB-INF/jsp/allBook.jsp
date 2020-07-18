<%--
  Created by IntelliJ IDEA.
  User: 77095
  Date: 2020/7/16
  Time: 17:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="baseUri" value="${pageContext.request.contextPath}"
       scope="request"></c:set>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>所有图书</title>
    <link rel="stylesheet" href="${baseUri}/static/layui/css/layui.css">
</head>
<style>
    <!--
    .pageshow {
        background-color: orage;
        float: right;
        line-height: 50px;
        margin-right: 100px;
    }
    -->
</style>
<body>
<!-- 内容主体区域 -->
<fieldset class="layui-elem-field layui-field-title"
          style="margin-top: 20px;">
    <legend>所有图书</legend>
</fieldset>


<div class="layui-form">
    <table class="layui-table">
        <colgroup>
            <col width="150">
            <col width="150">
            <col width="150">
            <col width="80">
            <col width="80">
            <col>
        </colgroup>
        <thead>
        <tr>
            <th>书籍编号</th>
            <th>书籍名字</th>
            <th>书籍数量</th>
            <th>书籍详情</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${requestScope.get('list')}" var="book">
            <tr>
                <td>${book.bookID }</td>
                <td>${book.bookName }</td>
                <td>${book.bookCounts }</td>
                <td>${book.detail}</td>
                <td>
                        <br><br>
                        <a class="layui-btn"
                           style="background-color: rgb(204, 139, 41)" href="${pageContext.request.contextPath}/book/toUpdateBook?id=${book.getBookID() }">编辑</a>
                        <a class="layui-btn"
                       style="background-color: red" href="${pageContext.request.contextPath}/book/del/${book.getBookID()}">删除</a>
                        <br><br>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

<script src="${baseUri}/static/layui/layui.js"></script>
<script>
    //JavaScript代码区域
    layui.use('element', function() {
        var element = layui.element;

    });
    layui.use('carousel', function() {
        var carousel = layui.carousel;
        //建造实例
        carousel.render({
            elem : '#test1',
            width : '100%' //设置容器宽度
            ,
            arrow : 'always' //始终显示箭头
            //,anim: 'updown' //切换动画方式
        });
    });
    layer.open({
        type : 4,
        content : [ '已下架', '#soldBook' ]
        //数组第二项即吸附元素选择器或者DOM
    });
</script>
</body>
</html>

