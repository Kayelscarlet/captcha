<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE html> 
<html> 
 <head> 
 <title>createTable2.html</title> 
 <style type="text/css"> 
  table{ 
   border:#00ffff solid 2px; 
   border-collapse:collapse; 
  } 
  td{ 
   border:#8080ff solid 2px; 
    padding:10px; 
  } 
 </style> 
 <script type="text/javascript"> 
  var tableNode; 
  function createTable(){ 
    tableNode=document.createElement("table");//获得对象 
   tableNode.setAttribute("id","table") 
   var row=parseInt(document.getElementsByName("row1")[0].value);//获得行号 
   //alert(row); 
   if(row<=0 || isNaN(row) ){ 
    alert("输入的行号错误，不能创建表格，请重新输入："); 
    return; 
   } 
   var cols=parseInt(document.getElementsByName("cols1")[0].value); 
   if(isNaN(cols) || cols<=0){ 
    alert("输入的列号错误，不能创建表格，请重新输入："); 
    return; 
   } 
   //上面确定了 现在开始创建 
   for(var x=0;x<row;x++){ 
    var trNode=tableNode.insertRow(); 
    for(var y=0;y<cols;y++){ 
     var tdNode=trNode.insertCell(); 
     tdNode.innerHTML="单元格"+(x+1)+"-"+(y+1); 
    } 
   } 
   document.getElementById("div1").appendChild(tableNode);//添加到那个位置 
  } 
  function delRow(){ 
   //要删除行，必须得到table对象才能删除，所以在创建的时候必须要设置table对象的 id 方便操作 
   var tab=document.getElementById("table");//获得table对象 
   if(tab==null){ 
    alert("删除的表不存在！") 
    return; 
   } 
   var rows=parseInt(document.getElementsByName("delrow1")[0].value);//获得要删除的对象 
   if(isNaN(rows)){ 
    alert("输入的行不正确。请输入要删除的行。。。"); 
    return; 
   } 
   if (rows >= 1 && rows <= tab.rows.length) { 
    tab.deleteRow(rows-1); 
    }else{ 
     alert("删除的行不存在！！"); 
     return ; 
    } 
     
  } 
  //删除列要麻烦些， 要通过行来进行删除 
  // 一行的cells的长度就是列的个数 
  //tab.rows[x].deleteCell(cols-1) 
  function delCols(){ 
   //获得table对象 
   var tab=document.getElementById("table"); 
     
   if(tab==null){ 
    alert("删除的表不存在！！"); 
    return ; 
   } 
   //获得文本框里面的内容 
   var cols=parseInt(document.getElementsByName("delcols1")[0].value); 
   //检查是否可靠 
   if(isNaN(cols)){ 
    alert("输入不正确。请输入要输出的列。。"); 
    return; 
   } 
   if(!(cols>=1 && cols<tab.rows[0].cells.length)){ 
    alert("您要删除的行不存在！！"); 
    return; 
   } 
   for(var x=0;x<tab.rows.length;x++){//所有的行 
    tab.rows[x].deleteCell(cols-1); 
   } 
  } 
   
 </script> 
 </head> 
  
 <body> 
 行:<input type="text" name="row1"/> 
 列:<input type="text" name="cols1"/> 
 <input type="button" value="创建表格" onclick="createTable()"/><br/> 
   
 <input type="text" name="delrow1"/> 
 <input type="button" value="删除行" onclick="delRow()"/><br/> 
   
 <input type="text" name="delcols1"/> 
 <input type="button" value="删除列" onclick="delCols()"/><br> 
 <div id="div1"></div> 
 
 
 
 
 
 
 
 
<input type="button" id="add_btn" value="新建子目录" mice-btn="icon-add">
<script type="text/JavaScript" src="jQuery.js"></script>
<script type="text/javascript" src="artDialog.js"></script>
<script type="text/javascript">
         $("#add_btn").bind('click',function(){
                art.dialog({
                  lock: true,                        
                                    // (弹出框时后面的主页面是否“锁”起来（即蒙上了一个阴影层, true：代表锁起来 false：反之)
                                         
                  title: '新建子目录',
                                   // (弹出框的标题)
                content:'<'+'iframe id="newFream" frameborder="0" src="----" height="100" width="270"></'+'iframe>',
                                    // (frameborder="0" : 无框 src：里写需要展示的内容链接，可以是个页面)
                 id: 'EF893L',
                 height:100, 
                                 //弹出框的高度 
                 width:300,
                               //弹出框的宽度
                 opacity:.10,
                                          //阴影层颜色的深浅
        ok:function(){
                     window.location.href = "-----";
                      // (点击 okVal此操作名的后主页面的动作，如刷新或。。。。)
        },
        okVal:'关闭',
                     // (右下角所显示的操作名)
     });
});
</script>
 

 
 
 
 
 
 
 
 </body> 
</html>