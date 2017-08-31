<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<body>
        <!--用户组列表展示start-->
            <table id="admusergroup_list" title="用户组列表" cellspacing="0" cellpadding="0">
                <thead>
                    <tr>
                        <th field="id" width="30">管理员组ID</th>
                        <th field="groupname" width="50">管理员组名称</th>
                        <th field="describe" width="120">描述信息</th>
                        <th field="createtime" formatter="dataformatter" width="50">添加时间</th>
                        <th field="operation" width="100" data-options="field:'_operate',align:'center',formatter:admUserGrouproupOpt">操作</th>
                    </tr>
                </thead>
            </table>
            <div id="admusergroup_toolbar" style="padding:5px;height:auto">
                <div style="margin-bottom:5px">
                    <a href="#" onclick="openAddAdmUserGroupWin()" class="easyui-linkbutton" iconCls="icon-add" plain="true">添加</a>
                    <a href="#" onclick="deleteAdmUserGroup()" class="easyui-linkbutton" iconCls="icon-remove" plain="true">删除</a>
                </div>
                <div>
					组名称:
					<input name="searchAdmUserGroupName" class="easyui-textbox" style="width: 100px">
					<a href="#" class="easyui-linkbutton" iconCls="icon-search" onclick="searAdmUserGroupObj.search()">查询</a>
				</div>
            </div>
    
    <!--用户组列表展示end-->

    <!--添加用户组窗口 start-->
    <div id="addadmusergroup" iconCls="icon-save" title="添加用户组">

    </div>
    <!--添加用户组窗口 end-->

    <!--修改用户组窗口 start-->
    <div id="modifyadmusergroup" iconCls="icon-save" title="修改用户组">
    </div>
    <!--修改用户组窗口 end-->
    <script type="text/javascript" src="<%=request.getContextPath()%>/static/js/admusergroup/admUserGroupList.js"></script>
</body>

</html>