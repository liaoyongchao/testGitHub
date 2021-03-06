<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<body>
	<div class="easyui-layout" data-options="fit:true">
		<!--用户组列表展示start-->
		<div data-options="region:'center'" border="false" style="padding:0px">
			<table id="admUser_list" title="管理员列表" cellspacing="0" cellpadding="0">
				<thead>
					<tr>
						<th field="id" width="20">ID</th>
						<th field="accout" width="50">账号</th>
						<th field="mail" width="80">邮箱</th>
						<th field="name" width="50">姓名</th>
						<th field="department" width="50">部门</th>
                        <th field="phone"  width="50">电话号码</th>
						<th field="createtime" formatter="dataformatter" width="80">创建时间</th>
						<th field="updatetime" formatter="dataformatter" width="80">最后一次修改时间</th>
						<th field="operation" width="30" data-options="field:'_operate',align:'center',formatter:admUserOpt">操作</th>
					</tr>
				</thead>
			</table>
			<div id="admUser_toolbar" style="padding:5px;height:auto">
				<div style="margin-bottom:5px">
					<a href="#" onclick="openAddAdmUserWin()" class="easyui-linkbutton" iconCls="icon-add" plain="true">添加</a>
					<a href="#" onclick="deleteAdmUser()" class="easyui-linkbutton" iconCls="icon-remove" plain="true">删除</a>
				</div>
				<div>
                    ID:
					<input name="searchAdmUserId" class="easyui-textbox" style="width: 100px">
					姓名:
					<input name="searchAdmUserName" class="easyui-textbox" style="width: 100px">
					账号:
					<input name="searchAdmUserAccount" class="easyui-textbox" style="width: 100px">
					邮箱:
					<input name="searchAdmUserEmail" class="easyui-textbox" style="width: 150px" data-options="validType:'email'" invalidMessage="邮箱格式不正确">
					电话:
					<input name="searchAdmUserPhone" class="easyui-textbox" style="width: 100px" >
					<a href="#" class="easyui-linkbutton" iconCls="icon-search" onclick="searAdmUserObj.search()">查询</a>
				</div>
			</div>
		</div>
	</div>
	<!--用户组列表展示end-->

	<!--添加用户组窗口 start-->
	<div id="addAdmUser" iconCls="icon-save" title="添加用户"></div>
	<!--添加用户组窗口 end-->

	<!--修改用户组窗口 start-->
	<div id="modifyAdmUser" iconCls="icon-save" title="修改用户"></div>
	<!--修改用户组窗口 end-->
	<script type="text/javascript" src="<%=request.getContextPath()%>/static/js/admUser/admUserList.js"></script>
</body>

</html>