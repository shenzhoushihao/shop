<%@ page contentType="text/html; charset=utf-8"%>
<%@ include file="/WEB-INF/jsp/common/tags.jsp"%>

<aos:html title="用户增删改查" base="http" lib="ext">
<aos:body>
</aos:body>
</aos:html>

<aos:onready>
	<aos:viewport layout="border">
		<aos:gridpanel id="g_account" url="aosUserHttpService.listPage" onrender="g_account_query" onitemdblclick="#w_account_u.show();" region="center">
			<aos:docked forceBoder="1 0 1 0">
				<aos:dockeditem xtype="tbtext" text="角色信息" />
				<aos:dockeditem xtype="tbseparator" />
				<aos:dockeditem text="新增用户" icon="add.png" onclick="#w_account.show();AOS.reset(f_account);" />
				<aos:dockeditem text="修改用户" icon="edit.png" onclick="#w_account_u.show();" />
				<aos:dockeditem text="批量删除" icon="del.png" onclick="g_account_del" />
				<aos:triggerfield emptyText="账号" id="id_account" onenterkey="g_account_query" trigger1Cls="x-form-search-trigger" onTrigger1Click="g_account_query" width="180" />
			</aos:docked>
			<aos:selmodel type="checkbox" mode="multi" />
			<aos:column type="rowno" />
			<aos:column header="流水号" dataIndex="id" hidden="true" />
			<aos:column header="学院流水号" dataIndex="college_id" hidden="true" />
			<aos:column header="账号" dataIndex="account" width="100" />
			<aos:column header="用户名称" dataIndex="name" width="100" />
			<aos:column header="性别" dataIndex="sex" rendererField="sex" width="80" />
			<aos:column header="学院" dataIndex="cname" width="100" />
			<aos:column header="电子邮箱" dataIndex="email" width="100" />
			<aos:column header="手机号码" dataIndex="telephone" width="100" />
			<aos:column header="账号状态" dataIndex="status" rendererField="user_status" width="80" />
			<aos:column header="是否删除" dataIndex="is_del" rendererField="is" width="80" />
			<aos:column header="创建时间" dataIndex="createdtime" width="120" />
			<aos:column header="停用账号" rendererFn="fn_button_render" align="center" fixedWidth="60" />
			<aos:column header="删除账号" rendererFn="fn_button_del" align="center" fixedWidth="60" />
		</aos:gridpanel>

		<%-- 新增窗口 --%>
		<aos:window id="w_account" title="新增账号">
			<aos:formpanel id="f_account" width="450" msgTarget="under" layout="anchor" labelWidth="70">
				<aos:textfield name="account" fieldLabel="账号(学号)" maxLength="64" allowBlank="false" />
				<aos:textfield name="password" fieldLabel="密码" allowBlank="false" />
				<aos:textfield name="name" fieldLabel="姓名" maxLength="32" allowBlank="false" />
				<aos:combobox name="sex" fieldLabel="性别" dicField="sex" allowBlank="false" />
				<aos:combobox name="college_id" fieldLabel="学院" editable="false" allowBlank="false" url="aosUserHttpService.getColleges"/>
				<aos:textfield name="email" fieldLabel="电子邮箱" maxLength="64" allowBlank="false" />
				<aos:textfield name="telephone" fieldLabel="手机号码" maxLength="64" allowBlank="false" />
			</aos:formpanel>
			<aos:docked dock="bottom" ui="footer">
				<aos:dockeditem xtype="tbfill" />
				<aos:dockeditem onclick="f_account_save" text="保存" icon="ok.png" />
				<aos:dockeditem onclick="#w_account.hide();" text="关闭" icon="close.png" />
			</aos:docked>
		</aos:window>

		<%-- 修改窗口 --%>
		<aos:window id="w_account_u" title="修改账号" onshow="w_account_u_onshow">
			<aos:formpanel id="f_account_u" width="450" msgTarget="under" layout="anchor" labelWidth="70">
				<%-- 更新时的隐藏变量(主键) --%>
				<aos:hiddenfield name="id" fieldLabel="流水号" />
				<aos:textfield name="account" fieldLabel="账号(学号)" maxLength="64" allowBlank="false" />
				<aos:textfield name="name" fieldLabel="姓名" maxLength="32" allowBlank="false" />
				<aos:combobox name="sex" fieldLabel="性别" dicField="sex" allowBlank="false" />
				<aos:combobox id="college_id_u" name="college_id" fieldLabel="学院" editable="false" allowBlank="false" url="aosUserHttpService.getColleges"/>
				<aos:textfield name="email" fieldLabel="电子邮箱" maxLength="64" allowBlank="false" />
				<aos:textfield name="telephone" fieldLabel="手机号码" maxLength="64" allowBlank="false" />
			</aos:formpanel>
			<aos:docked dock="bottom" ui="footer">
				<aos:dockeditem xtype="tbfill" />
				<aos:dockeditem onclick="f_account_update" text="保存" icon="ok.png" />
				<aos:dockeditem onclick="#w_account_u.hide();" text="关闭" icon="close.png" />
			</aos:docked>
		</aos:window>

	</aos:viewport>

	<script type="text/javascript">
		college_id_u_store.load();
	
		//加载表格数据
		function g_account_query() {
			var params = {
                account: id_account.getValue()
            };
			g_account_store.getProxy().extraParams = params;
			g_account_store.loadPage(1);
		}
		
		//新增用户保存
		function f_account_save(){
				AOS.ajax({
					forms : f_account,
					url : 'aosUserHttpService.saveUser',
					ok : function(data) {
						 AOS.tip(data.appmsg);
						 g_account_store.reload();
						 w_account.hide();
					}
			});
		}
		
		//监听修改窗口弹出
		function w_account_u_onshow(){
			//这里演示的是直接从表格行中加载数据，也可以发一个ajax请求查询数据(见misc1.jsp有相关用法)
			var record = AOS.selectone(g_account, true);
			f_account_u.loadRecord(record);
		}
		
		//修改用户保存
		function f_account_update(){
				AOS.ajax({
					forms : f_account_u,
					url : 'aosUserHttpService.updateUser',
					ok : function(data) {
						 AOS.tip(data.appmsg);
						 g_account_store.reload();
						 w_account_u.hide();
					}
			});
		}
		
        //删除用户信息
	 	function g_account_del(){
				var selection = AOS.selection(g_account, 'id');
				if(AOS.empty(selection)){
					AOS.tip('删除前请先选中数据。');
					return;
				}
				if(selection=='-1'){
					AOS.tip('禁止删除超级管理员账户');
					return;
				}
				var rows = AOS.rows(g_account);
				var msg =  AOS.merge('确认要删除选中的{0}个账号信息吗？', rows);
				AOS.confirm(msg, function(btn){
					if(btn === 'cancel'){
						AOS.tip('删除操作被取消。');
						return;
					}
					AOS.ajax({
						url : 'aosUserHttpService.delUser',
						params:{
							aos_rows: selection
						},
						ok : function(data) {
							 AOS.tip(data.appmsg);
							 g_account_store.reload();
						}
					});
				});
		}
        
		//按钮列转换
		function fn_button_render(value, metaData, record) {
			if(record.data.status=='1'){
				return '<input type="button" value="停用" class="cbtn_danger"  onclick="w_userNot_show();" />';				
			}
			return '<input type="button" value="恢复" class="cbtn" onclick="w_userNot_show();" />';				
		}
		
		//按钮列转换
		function fn_button_del(value, metaData, record) {
			if(record.data.is_del=='1'){
				return '<input type="button" value="找回" class="cbtn" onclick="w_userDel_show();" />';
			}
			return '<input type="button" value="删除" class="cbtn_danger" onclick="w_userDel_show();" />';
		}
	</script>
</aos:onready>
<script type="text/javascript">

    //停用账户
	function w_userNot_show(){
		var record = AOS.selectone(AOS.get('g_account'));
		if(record.data.id=='-1'){
			AOS.tip('禁止停用超级管理员账户');
			return;
		}
		
		var op='恢复';
		if(record.data.status=='1'){
			op='停用';
		}
		var msg =  AOS.merge('确认要{0}【{1}】账号信息吗？',op,record.data.account);
		AOS.confirm(msg, function(btn){
			if(btn === 'cancel'){
				AOS.tip('{0}操作被取消。',op);
				return;
			}
			AOS.ajax({
				url : 'aosUserHttpService.disconnectUser',
				params:{
					id: record.data.id,
					status:record.data.status
				},
				ok : function(data) {
					 AOS.tip(data.appmsg);
					 AOS.get('g_account').getStore().reload();
				}
			});
		});
	}
	//删除账户
	function w_userDel_show(){
		var record = AOS.selectone(AOS.get('g_account'));
		if(record.data.id=='-1'){
			AOS.tip('禁止删除超级管理员账户');
			return;
		}
		
		var op='删除';
		if(record.data.is_del=='1'){
			op='找回';
		}
		var msg =  AOS.merge('确认要{0}【{1}】账号信息吗？',op, record.data.account);
		AOS.confirm(msg, function(btn){
			if(btn === 'cancel'){
				AOS.tip('{0}操作被取消。',op);
				return;
			}
			AOS.ajax({
				url : 'aosUserHttpService.deleteUser',
				params:{
					id: record.data.id,
					is_del:record.data.is_del
				},
				ok : function(data) {
					 AOS.tip(data.appmsg);
					 AOS.get('g_account').getStore().reload();
				}
			});
		});
	}
</script>