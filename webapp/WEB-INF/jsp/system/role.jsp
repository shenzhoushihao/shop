<%@ page contentType="text/html; charset=utf-8"%>
<%@ include file="/WEB-INF/jsp/common/tags.jsp"%>

<aos:html title="角色增删改查" base="http" lib="ext">
<aos:body>
</aos:body>
</aos:html>

<aos:onready>
	<aos:viewport layout="border">
		<aos:gridpanel id="g_role" url="aosRoleHttpService.listPage" onrender="g_role_query" onitemdblclick="#w_role_u.show();" region="center">
			<aos:docked forceBoder="1 0 1 0">
				<aos:dockeditem xtype="tbtext" text="角色信息" />
				<aos:dockeditem xtype="tbseparator" />
				<aos:dockeditem text="新增角色" icon="add.png" onclick="#w_role.show();AOS.reset(f_role);" />
				<aos:dockeditem text="修改角色" icon="edit.png" onclick="#w_role_u.show();" />
				<aos:dockeditem text="批量删除" icon="del.png" onclick="g_role_del" />
				<aos:triggerfield emptyText="角色名称" id="id_role" onenterkey="g_role_query" trigger1Cls="x-form-search-trigger" onTrigger1Click="g_role_query" width="180" />
			</aos:docked>
			<aos:selmodel type="checkbox" mode="multi" />
			<aos:column type="rowno" />
			<aos:column header="流水号" dataIndex="id" hidden="true" />
			<aos:column header="角色名称" dataIndex="rolename" width="160" />
			<aos:column header="备注" dataIndex="description" width="160" />
		</aos:gridpanel>

		<%-- 新增窗口 --%>
		<aos:window id="w_role" title="新增角色">
			<aos:formpanel id="f_role" width="450" msgTarget="under" layout="anchor" labelWidth="70">
				<aos:textfield name="rolename" fieldLabel="角色名称" maxLength="160" allowBlank="false" />
				<aos:textfield name="description" fieldLabel="备注" maxLength="250"/>
			</aos:formpanel>
			<aos:docked dock="bottom" ui="footer">
				<aos:dockeditem xtype="tbfill" />
				<aos:dockeditem onclick="f_role_save" text="保存" icon="ok.png" />
				<aos:dockeditem onclick="#w_role.hide();" text="关闭" icon="close.png" />
			</aos:docked>
		</aos:window>

		<%-- 修改窗口 --%>
		<aos:window id="w_role_u" title="修改学院" onshow="w_role_u_onshow">
			<aos:formpanel id="f_role_u" width="450" msgTarget="under" layout="anchor" labelWidth="70">
				<%-- 更新时的隐藏变量(主键) --%>
				<aos:hiddenfield name="id" fieldLabel="流水号" />
				<aos:textfield name="rolename" fieldLabel="角色名称" maxLength="160" allowBlank="false" />
				<aos:textfield name="description" fieldLabel="备注" maxLength="250"/>
			</aos:formpanel>
			<aos:docked dock="bottom" ui="footer">
				<aos:dockeditem xtype="tbfill" />
				<aos:dockeditem onclick="f_role_update" text="保存" icon="ok.png" />
				<aos:dockeditem onclick="#w_role_u.hide();" text="关闭" icon="close.png" />
			</aos:docked>
		</aos:window>

	</aos:viewport>

	<script type="text/javascript">
	
		//加载表格数据
		function g_role_query() {
			var params = {
                	rolename: id_role.getValue()
            };
			g_role_store.getProxy().extraParams = params;
			g_role_store.loadPage(1);
		}
		
		//新增角色保存
		function f_role_save(){
				AOS.ajax({
					forms : f_role,
					url : 'aosRoleHttpService.saveRole',
					ok : function(data) {
						 AOS.tip(data.appmsg);
						 g_role_store.reload();
						 w_role.hide();
					}
			});
		}
		
		//监听修改窗口弹出
		function w_role_u_onshow(){
			//这里演示的是直接从表格行中加载数据，也可以发一个ajax请求查询数据(见misc1.jsp有相关用法)
			var record = AOS.selectone(g_role, true);
			f_role_u.loadRecord(record);
		}
		
		//修改角色保存
		function f_role_update(){
				AOS.ajax({
					forms : f_role_u,
					url : 'aosRoleHttpService.updateRole',
					ok : function(data) {
						 AOS.tip(data.appmsg);
						 g_role_store.reload();
						 w_role_u.hide();
					}
			});
		}
		
        //删除角色信息
	 	function g_role_del(){
				var selection = AOS.selection(g_role, 'id');
				if(AOS.empty(selection)){
					AOS.tip('删除前请先选中数据。');
					return;
				}
				var rows = AOS.rows(g_role);
				var msg =  AOS.merge('确认要删除选中的{0}个角色信息吗？', rows);
				AOS.confirm(msg, function(btn){
					if(btn === 'cancel'){
						AOS.tip('删除操作被取消。');
						return;
					}
					AOS.ajax({
						url : 'aosRoleHttpService.delRole',
						params:{
							aos_rows: selection
						},
						ok : function(data) {
							 AOS.tip(data.appmsg);
							 g_role_store.reload();
						}
					});
				});
			}
	</script>
</aos:onready>