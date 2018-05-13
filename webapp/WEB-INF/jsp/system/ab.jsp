<%@ page contentType="text/html; charset=utf-8"%>
<%@ include file="/WEB-INF/jsp/common/tags.jsp"%>

<aos:html title="广告增删改查" base="http" lib="ext">
<aos:body>
</aos:body>
</aos:html>

<aos:onready>
	<aos:viewport layout="border">
		<aos:gridpanel id="g_ad" url="bannerHttpService.listPage" onrender="g_ad_query" onitemdblclick="#w_ad_u.show();" region="center">
			<aos:docked forceBoder="1 0 1 0">
				<aos:dockeditem xtype="tbtext" text="广告轮播信息" />
				<aos:dockeditem xtype="tbseparator" />
				<aos:dockeditem text="更新轮播图" icon="edit.png" onclick="#w_ad_u.show();" />
			</aos:docked>
			<aos:selmodel type="checkbox" mode="multi" />
			<aos:column type="rowno" />
			<aos:column header="流水号" dataIndex="id" hidden="true" />
			<aos:column header="商品流水号" dataIndex="cargo_id" hidden="true" />
			<aos:column header="商品名称" dataIndex="pname" width="100" align="center"/>
			<aos:column header="商品轮播图" dataIndex="imgsrc" rendererField="sex" width="100" align="center" />
			<aos:column header="描述" dataIndex="description" width="120" align="center" />
		</aos:gridpanel>

		<%-- 修改窗口 --%>
		<aos:window id="w_ad_u" title="修改轮播图" onshow="w_ad_u_onshow">
			<aos:formpanel id="f_ad_u" width="450" msgTarget="under" layout="anchor" labelWidth="70">
				<%-- 更新时的隐藏变量(主键) --%>
				<aos:hiddenfield name="id" fieldLabel="流水号" />
				<aos:combobox id="cargo_id" name="cargo_id" fieldLabel="商品名称" allowBlank="false" url="bannerHttpService.getProductList"/>
				<aos:filefield name="imgsrc" fieldLabel="商品轮播图" allowBlank="false"/>
				<aos:textfield name="description" fieldLabel="描述" maxLength="256" />
			</aos:formpanel>
			<aos:docked dock="bottom" ui="footer">
				<aos:dockeditem xtype="tbfill" />
				<aos:dockeditem onclick="f_ad_update" text="保存" icon="ok.png" />
				<aos:dockeditem onclick="#w_ad_u.hide();" text="关闭" icon="close.png" />
			</aos:docked>
		</aos:window>

	</aos:viewport>

	<script type="text/javascript">
		cargo_id_store.load();
		//加载表格数据
		function g_ad_query() {
			var params = {
            };
			g_ad_store.getProxy().extraParams = params;
			g_ad_store.loadPage(1);
		}
		
		//监听修改窗口弹出
		function w_ad_u_onshow(){
			//这里演示的是直接从表格行中加载数据，也可以发一个ajax请求查询数据(见misc1.jsp有相关用法)
			var record = AOS.selectone(g_ad, true);
			f_ad_u.loadRecord(record);
		}
		
		//修改保存
		function f_ad_update(){
			AOS.ajax({
				forms : f_ad_u,
				url : 'bannerHttpService.updateAD',
				ok : function(data) {
					  if(!f_ad_u.isValid()){
						  AOS.tip("更新成功！");
						  return false;
					  }
					  f_ad_u.getForm().fileUpload = true;
					  f_ad_u.getForm().submit({
						  url:'do.jhtml?router=bannerHttpService.updateAD&juid=${juid}',
						  waitMsg:'文件上传中	...',
						  success:function(){
							  AOS.tip("更新成功！");
							  g_ad_store.reload();
						      w_ad_u.hide();
						  },
						  failure:function(){
							  AOS.tip("更新成功！");
							  g_ad_store.reload();
						      w_ad_u.hide();
						  }
					  });
				}
		   });	  
		}
	</script>
</aos:onready>