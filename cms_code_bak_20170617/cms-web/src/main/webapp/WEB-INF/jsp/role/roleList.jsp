<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<body>
    <div class="easyui-layout" data-options="fit:true">
        <!--左侧树菜单start-->
        <div data-options="region:'west',split:true" border="false" style="width:220px;padding:5px">
            <div class="roletree left">
                <ul id="roletree" class="ztree"></ul>
            </div>
        </div>
        <!--左侧树菜单end-->

        <!--权限列表展示start-->
        <div data-options="region:'center'" border="false" style="padding:0px">
            <table id="role_list" title="权限列表" cellspacing="0" cellpadding="0">
                <thead>
                    <tr>
                        <th field="id" width="30">权限ID</th>
                        <th field="name" width="50">权限名称</th>
                        <th field="roleurl" width="50">权限地址</th>
                        <th field="module" width="50">模块名称</th>
                        <th field="action" width="50">操作名称</th>
                        <th field="ismenu" width="50" data-options="formatter:roleIsMenu">是否为菜单</th>
                        <th field="describe" width="100">权限说明</th>
                        <th field="department" width="100" data-options="field:'_operate',align:'center',formatter:roleOpt">操作</th>
                    </tr>
                </thead>
            </table>
            <div id="role_toolbar" style="padding:5px;height:auto">
                <div style="margin-bottom:5px">
                    <input type="hidden" name="searchRolepid" id="searchRolepid" value="0" required="true" missingMessage="不能为空">
                    <!--<a href="#" onclick="openAddRoleDirWin()" class="easyui-linkbutton" iconCls="icon-add" plain="true">添加目录</a>-->
                    <a href="#" onclick="openAddRoleWin()" class="easyui-linkbutton" iconCls="icon-add" plain="true">添加</a>
                    <a href="#" onclick="deleteRole()" class="easyui-linkbutton" iconCls="icon-remove" plain="true">删除</a>
                </div>
                <div>

                    权限名称:
                    <input name="searchRoleName" class="easyui-textbox" style="width: 100px"> 权限地址:
                    <input name="searchRoleUrl" class="easyui-textbox" style="width: 100px">
                    <a href="#" class="easyui-linkbutton" iconCls="icon-search" onclick="searRoleObj.search()">查询</a>
                </div>
            </div>
        </div>
    </div>
    <!--权限列表展示end-->

    <!--添加权限目录窗口 start-->
    <div id="addRoleDir" iconCls="icon-save" title="添加权限目录">
    </div>
    <!--添加权限目录窗口 end-->

    <!--添加权限窗口 start-->
    <div id="addRole" iconCls="icon-save" title="添加权限">
    </div>
    <!--添加权限窗口 end-->

    <!--修改权限窗口 start-->
    <div id="modifyrole" iconCls="icon-save" title="修改权限">
    </div>
    <!--修改权限窗口 end-->
    <script type="text/javascript" src="<%=request.getContextPath()%>/static/js/role/roleList.js"></script>
</body>

</html>