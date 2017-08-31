<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--添加权限窗口 -->
<div class="easyui-layout" data-options="fit:true">
    <!--基础信息窗口 start-->
    <div data-options="region:'north',split:true" border="false" style="padding:10px 10px 20px 50px">

        <form id="addAdmUser">
            <table cellpadding="5">
                <tr>
                    <td>登陆账号:</td>
                    <td><input class="easyui-textbox" type="text" name="admUserAcout" required="true" missingMessage="不能为空"></input>
                    </td>
                    <td>姓名:</td>
                    <td><input class="easyui-textbox" type="text" name="admUserName" required="true" missingMessage="不能为空"></input>
                    </td>
                    <td>手机号:</td>
                    <td><input class="easyui-textbox" type="text" name="admUserPhone" required="true" missingMessage="不能为空"></input>
                    </td>
                </tr>
                <tr>
                    <td>部门:</td>
                    <td><input class="easyui-textbox" type="text" name="admUserDepartment" required="true" missingMessage="不能为空"></input>
                    </td>
                    <td>邮箱:</td>
                    <td>
                        <input class="easyui-textbox" type="text" name="admUserEmail" validtype="email" required="true" missingMessage="不能为空" invalidMessage="邮箱格式不正确"></input>
                    </td>

                    <td>密码:</td>
                    <td><input class="easyui-textbox" type="password" name="admUserPassword" required="true" missingMessage="不能为空"></input>
                    </td>


                </tr>
                <tr>
                    <td> </td>
                    <td> </td>
                    <td> </td>
                    <td><a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitAddAmdUserForm()">Submit</a>
                        <a href="javascript:void(0)" class="easyui-linkbutton" onclick="clearAddAmdUserForm()">Clear</a>
                    </td>
                    <td> </td>
                    <td> </td>
                </tr>

            </table>
        </form>

    </div>
    <!--基础信息窗口 end-->

    <!--权限列表展示start-->
    <div data-options="region:'center'" border="false" style="padding:0px">
        <table id="admusergroup" title="选择用户组" cellspacing="0" cellpadding="0">
            <thead>
                <tr>
                    <th field="id" width="30">管理员组ID</th>
                    <th field="groupname" width="50">管理员组名称</th>
                    <th field="describe" width="50">描述信息</th>
                    <th field="createtime" formatter="dataformatter" width="50">添加时间</th>
                </tr>
            </thead>
        </table>
        <div id="addAdmUser_toolbar" style="padding:5px;height:auto">
				
				  <div>
					组名称:
					<input name="addAdmUser_UserGroupName" class="easyui-textbox" style="width: 100px">
					<a href="#" class="easyui-linkbutton" iconCls="icon-search" onclick="addAdmUserObj.search()">查询</a>
				</div>
			</div>
    </div>
    <!--权限列表展示end-->
</div>

<script type="text/javascript" src="<%=request.getContextPath()%>/static/js/admUser/addadmuser.js"></script>