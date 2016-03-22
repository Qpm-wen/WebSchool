<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>学生综合测评班评评分表</title>
<style type="text/css">
	table td{
		/*文字居中*/
		text-align:center;
		height:35px;	/*设置td高度*/
		width: 33.3%;		/*设置td宽度*/
	}
	
	/*合并表格的边框*/
	table{
		border-collapse:collapse;
	}
</style>  

<script type="text/javascript">
	//校验数据
	function checkText(num1,num2,id){
		var grade=document.getElementById(id).value; 
		
		//var grade=document.getElementsByName("test")[0].value;
		if(!isNaN(grade)){
			if(grade >= num1 && grade<=num2){
				showInfo2(id+"1");
			}
			else{
				showInfo1(id+"1");
			}
		}else{
			showInfo1(id+"1");
		}
	
	}
	
	//显示提示信息
	function showInfo1(id){
		var message=document.getElementById(id);
		message.innerHTML="请输入合理的数据".fontcolor("red");
		
	}
	function showInfo2(id){
		var message=document.getElementById(id);
		message.innerHTML="";
	}
</script>
</head>

<body>
	<div align="center">
		学号：<span>${zgra.stuid}</span>&nbsp;&nbsp;&nbsp;&nbsp;
		姓名：<span>${name}</span>&nbsp;&nbsp;&nbsp;&nbsp;
		班级:<span>${clas}</span>	<br><br>
	</div>
	<form action="${pageContext.request.contextPath }/BGradesServlet?method=updateBGrades&
	stuid=${zgra.stuid}&gradingtype=${bgra.gradingtype}&name=${name}&clas=${clas}" method="post" >
    	<table border="1" align="center" width="60%">
        	<caption align="top" style="font-size:24px;margin:5px 0;font-weight: bold;" >学生综合测评评分表</caption>
            <tr>
            	<th>内容</th>
            	<th>自评</th>
            	<th>班评</th>
            </tr>
            <tr> 
            	<td colspan="3" style="font-weight: bold;">思想品德分 20分</td>
            </tr>

            <tr>
            	<td>思想政治观念（15分）</td>
            	<td>${zgra.sixiang }</td>  
                <td>
                	<input type="text" name="sixiang" id="sixiang" value="${bgra.sixiang}"  onblur="checkText(0,15,this.id)"/>
                	<span id="sixiang1"></span>
                </td>
            </tr>
            <tr>
            	<td>纪律观念（14分）</td>
            	<td>${zgra.jilv }</td>
                <td>
                	<input type="text" name="jilv" id="jilv" value="${bgra.jilv}" onblur="checkText(0,14,this.id)"/>
                	<span id="jilv1"></span>
                </td>
            </tr>
            <tr>
            	<td>集体观念（13分）</td>
            	<td>${zgra.jiti }</td>
                <td>
                	<input type="text" name="jiti" id="jiti" value="${bgra.jiti}" onblur="checkText(0,13,this.id)"/>
                	<span id="jiti1"></span>
                </td>
            </tr>
            <tr>
            	<td>基础文明修养（13分）</td>
            	<td>${zgra.wenming }</td>
                <td>
                	<input type="text" name="wenming" id="wenming" value="${bgra.wenming}" onblur="checkText(0,13,this.id)"/>
                	<span id="wenming1"></span>
                </td>
            </tr>
            <tr>
            	<td>学生公寓表现（15分）</td>
            	<td>${zgra.gongyu }</td>
                <td>
                	<input type="text" name="gongyu" id="gongyu" value="${bgra.gongyu}" onblur="checkText(0,15,this.id)"/>
                	<span id="gongyu1"></span>
                </td>
            </tr>
            <tr>
            	<td>社会实践（15分）</td>
            	<td>${zgra.shijian }</td>
                <td>
                	<input type="text" name="shijian" id="shijian" value="${bgra.shijian}" onblur="checkText(0,15,this.id)"/>
                	<span id="shijian1"></span>
                </td>
            </tr>
            
            <tr> 
            	<td colspan="3" style="font-weight: bold;">学业分 70分</td>
            </tr>
            
            <tr>
            	<td>学习成绩（90分）</td>
            	<td>${zgra.chengji}</td>
                <td>
                	<input type="text" name="chengji" id="chengji" value="${bgra.chengji}" onblur="checkText(0,90,this.id)"/>
                	<span id="chengji1"></span>
                </td>
            </tr>
            
            <tr> 
            	<td colspan="3" style="font-weight: bold;">文体表现 10分</td>
            </tr>
            
            <tr>
            	<td>体育课分（60分）</td>
            	<td>${zgra.tiyu }</td>
                <td>
                	<input type="text" name="tiyu" id="tiyu" value="${bgra.tiyu}" onblur="checkText(0,60,this.id)"/>
                	<span id="tiyu1"></span>
                </td>
            </tr>
             <tr>
                <td>文体活动分（10分）</td>
                <td>${zgra.wenti}</td>
                <td>
                	<input type="text" name="wenti" id="wenti" value="${bgra.wenti}" onblur="checkText(0,10,this.id)"/>
                	<span id="wenti1"></span>
                </td>
            </tr>
            
            <tr>
            	<td align="center" colspan="3"> 
                	<input type="submit" style="width: 80px;height: 30px;font-size: 16px;" value="提交" />
                </td>
            </tr>
        </table>	
    </form>
</body>
</html>