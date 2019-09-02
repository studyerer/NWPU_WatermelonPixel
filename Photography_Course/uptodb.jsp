<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<html>
<head>
<title>SELECT 操作</title>
</head>
<body>
 <%
     	String  user="root";    
     Connection  conn=null;
     	String  password="123456";       //密码为自己数据库的密码   
        Class.forName("com.mysql.cj.jdbc.Driver").newInstance(); //加载JDBC驱动程序   

        String  url="jdbc:mysql:"+ "//127.0.0.1:3306/watermelon?useSSL=false&useUnicode=true&characterEncoding=utf8&serverTimezone=GMT"; //bin_db为你的数据库的名称   
        //String url="jdbc:mysql://localhost:3306/bin_db?useUnicode=true&characterEncoding=utf-8";
        //String  url="jdbc:mysql:"+ "//127.0.0.1:3306/bin_db+?user="+user+"&password="+password;
        
       String name = request.getParameter("name");//获取教程名称
       String category = request.getParameter("category");//获取教程分类
       String image=request.getParameter("image");//获取图片信息
       String content=request.getParameter("content");//获取教程内容
       String important_word=request.getParameter("key");
       String description=request.getParameter("description");
       String writer = request.getParameter("writer");
       String Image="images/"+image;
        try {
			
			

		
            //建立连接
			conn= DriverManager.getConnection(url,user,password);

			

			Statement sql=conn.createStatement();
			if(category.equals("1")){
			String sql_insert="insert into activity_detail_about values("+"'"+name+"'"+","+"'"+Image+"'"+","+"'"+content+"'"+","+"'"+important_word+"'"+","+"'"+description+"'"+","+"'"+writer+"'"+")";
			System.out.print(sql_insert);
			sql.execute(sql_insert);
			
			}
			if(category.equals("2")){
				String sql_insert="insert into activity_detail_blog values("+"'"+name+"'"+","+"'"+Image+"'"+","+"'"+content+"'"+","+"'"+important_word+"'"+","+"'"+description+"'"+","+"'"+writer+"'"+")";
				System.out.print(sql_insert);
				sql.execute(sql_insert);
				
			}

			conn.close();

//			关闭文件

			

			out.println("恭喜，已经将新的记录成功地添加到数据库中！");

			} catch (IOException e) {

			e.printStackTrace();

		}		

   %> 

 

    </body>

 

</html>