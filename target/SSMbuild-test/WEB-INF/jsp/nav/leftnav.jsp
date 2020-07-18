<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="layui-side layui-bg-black">
	<div class="layui-side-scroll">
		<!-- 左侧导航区域（可配合layui已有的垂直导航） -->
		<ul class="layui-nav layui-nav-tree" lay-filter="test">
			<li class="layui-nav-item layui-nav-itemed">	<!-- layui-nav-itemed 展开 -->
			<a class="" href="javascript:;">管理图书</a>
				<dl class="layui-nav-child">
					<dd>
						<a href="/book/allBook" target="iframe">所有图书</a>
					</dd>
					<dd>
						<a href="/book/toAddBook" target="iframe">添加图书</a>
					</dd>
				</dl></li>
			<!-- <li class="layui-nav-item"><a href="###">###</a></li> -->
		</ul>
	</div>
</div>