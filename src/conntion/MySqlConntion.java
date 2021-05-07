package conntion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class MySqlConntion {
	//数据库地址
	public static String URL="jdbc:mysql://localhost:3306/temp?useUnicode=true&characterEncoding=utf-8";
	
	//数据库用户名
	public static String USER="root";
			
	//数据库密码
	public static String PASSWORD="0622";
	
	@SuppressWarnings("unused")
	public String mysqlL(String UserId,String UserPassword,String age){
		String times = "2020年11月16日";

		//提示信 息
		String Tmessg = "";
		String Tmessg2 = "";
		boolean login = false;
		boolean loginre = true;
		
		
		//判断账号密码是否合法
		if(UserId.length()<6||UserPassword.length()<6){
			Tmessg = "账号或密码不能小于6位数";
			login = false;
		}else if(UserId.length()>=11){
			Tmessg = "账号不能超过10位数";
			login = false;
		}else{
			login = true;
		}
		
		
		//判断用户名是否为空
		if(age==""){
				age = UserId;
			}
		
		//连接数据库
		if(login){
			try {
				
				//加载数据库驱动
				Class.forName("com.mysql.jdbc.Driver");
				
				
				//连接数据库
				Connection conn = DriverManager.getConnection(URL,USER,PASSWORD);
				
				
				//操作数据库增删改查
				Statement stem = conn.createStatement();
				
				
				//写入SQL操作语句
				//增加
				String sql = "insert into userdata(user_id,user_password,idname,timed) values('"+UserId+"','"+UserPassword+"','"+age+"','"+times+"')";
				//查询
				String sqlSelect = "select*from userdata where user_id='"+UserId+"'";
				
		
				//执行语句
				ResultSet re = stem.executeQuery(sqlSelect);
				
				//账号存在
				while(re.next()){
					String nameid = re.getString("user_id");
					if(UserId.equals(nameid)){
						Tmessg = "账号存在";
						loginre = false;
						continue;
					}
				}
				
				//账号不存在
				if(loginre){
					//调用执行方法
					stem.executeUpdate(sql);
					Tmessg = "注册成功";
				}
				
				//调用关闭资源方法
				conse(conn,stem);
				
				
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				
				//注册成功
			}finally{
				Tmessg2 = "<button><a href=\"login.jsp\">登录</a></button>";
			}
			
			//注册失败
		}else{
			Tmessg2 = "<button><a href=\"register.jsp\">重新注册</a></button>";
		}
		return Tmessg;
	}
	
	
	//关闭资源
	public static void conse(Connection sqlconse,Statement stmtconse){
		try{
			//判断集合中是否有返回值
			if(sqlconse!=null){
				sqlconse.close();
				sqlconse = null;
			}
			
			
			//释放数据库连接
			if(stmtconse != null){
				stmtconse.close();
				stmtconse = null;
			} 
		}catch(SQLException e){
			e.printStackTrace();
		}
	
}
}
