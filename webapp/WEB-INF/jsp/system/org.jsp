<%@ page contentType="text/html; charset=utf-8"%>
<%@ include file="/WEB-INF/jsp/common/tags.jsp"%>

<aos:html title="学院增删改查" base="http" lib="ext">
<aos:body>
</aos:body>
</aos:html>

<aos:onready>
	<aos:viewport layout="border">
		<aos:gridpanel id="g_college" url="aosOrgHttpService.listPage" onrender="g_college_query" onitemdblclick="#w_college_u.show();" region="center">
			<aos:docked forceBoder="1 0 1 0">
				<aos:dockeditem xtype="tbtext" text="学院信息" />
				<aos:dockeditem xtype="tbseparator" />
				<aos:dockeditem text="新增学院" icon="add.png" onclick="#w_college.show();AOS.reset(f_college);" />
				<aos:dockeditem text="修改学院" icon="edit.png" onclick="#w_college_u.show();" />
				<aos:dockeditem text="批量删除" icon="del.png" onclick="g_college_del" />
				<aos:triggerfield emptyText="学院名称" id="id_college" onenterkey="g_college_query" trigger1Cls="x-form-search-trigger" onTrigger1Click="g_college_query" width="180" />
			</aos:docked>
			<aos:selmodel type="checkbox" mode="multi" />
			<aos:column type="rowno" />
			<aos:column header="流水号" dataIndex="id" hidden="true" />
			<aos:column header="学院名称" dataIndex="cname" width="160" />
			<aos:column header="备注" dataIndex="description" width="160" />
		</aos:gridpanel>

		<%-- 新增窗口 --%>
		<aos:window id="w_college" title="新增学院">
			<aos:formpanel id="f_college" width="450" msgTarget="under" layout="anchor" labelWidth="70">
				<aos:textfield name="cname" fieldLabel="学院名称" maxLength="160" allowBlank="false" />
				<aos:textfield name="description" fieldLabel="备注" maxLength="250"/>
			</aos:formpanel>
			<aos:docked dock="bottom" ui="footer">
				<aos:dockeditem xtype="tbfill" />
				<aos:dockeditem onclick="f_college_save" text="保存" icon="ok.png" />
				<aos:dockeditem onclick="#w_college.hide();" text="关闭" icon="close.png" />
			</aos:docked>
		</aos:window>

		<%-- 修改窗口 --%>
		<aos:window id="w_college_u" title="修改学院" onshow="w_college_u_onshow">
			<aos:formpanel id="f_college_u" width="450" msgTarget="under" layout="anchor" labelWidth="70">
				<%-- 更新时的隐藏变量(主键) --%>
				<aos:hiddenfield name="id" fieldLabel="流水号" />
				<aos:textfield name="cname" fieldLabel="学院名称" maxLength="160" allowBlank="false" />
				<aos:textfield name="description" fieldLabel="备注" maxLength="250"/>
			</aos:formpanel>
			<aos:docked dock="bottom" ui="footer">
				<aos:dockeditem xtype="tbfill" />
				<aos:dockeditem onclick="f_college_update" text="保存" icon="ok.png" />
				<aos:dockeditem onclick="#w_college_u.hide();" text="关闭" icon="close.png" />
			</aos:docked>
		</aos:window>

	</aos:viewport>

	<script type="text/javascript">
	
		//加载表格数据
		function g_college_query() {
			var params = {
                	cname: id_college.getValue()
            };
			g_college_store.getProxy().extraParams = params;
			g_college_store.loadPage(1);
		}
		
		//新增学院保存
		function f_college_save(){
				AOS.ajax({
					forms : f_college,
					url : 'aosOrgHttpService.saveOrg',
					ok : function(data) {
						 AOS.tip(data.appmsg);
						 g_college_store.reload();
						 w_college.hide();
					}
			});
		}
		
		//监听修改窗口弹出
		function w_college_u_onshow(){
			//这里演示的是直接从表格行中加载数据，也可以发一个ajax请求查询数据(见misc1.jsp有相关用法)
			var record = AOS.selectone(g_college, true);
			f_college_u.loadRecord(record);
		}
		
		//修改学院保存
		function f_college_update(){
				AOS.ajax({
					forms : f_college_u,
					url : 'aosOrgHttpService.updateOrg',
					ok : function(data) {
						 AOS.tip(data.appmsg);
						 g_college_store.reload();
						 w_college_u.hide();
					}
			});
		}
		
        //删除学院信息
	 	function g_college_del(){
				var selection = AOS.selection(g_college, 'id');
				if(AOS.empty(selection)){
					AOS.tip('删除前请先选中数据。');
					return;
				}
				var rows = AOS.rows(g_college);
				var msg =  AOS.merge('确认要删除选中的{0}个学院信息吗？', rows);
				AOS.confirm(msg, function(btn){
					if(btn === 'cancel'){
						AOS.tip('删除操作被取消。');
						return;
					}
					AOS.ajax({
						url : 'aosOrgHttpService.delOrg',
						params:{
							aos_rows: selection
						},
						ok : function(data) {
							 AOS.tip(data.appmsg);
							 g_college_store.reload();
						}
					});
				});
			}
	</script>
</aos:onready>