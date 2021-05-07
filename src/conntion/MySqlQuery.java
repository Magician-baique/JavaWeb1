package conntion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class MySqlQuery extends MySqlConntion{
	public static int nameY = 0;
	public static String passwordY = "";
	public static String idname = "";
	public static String dateY = "";
	public static float purchase = 0;
	public static String Tessg = "未知错误";
	//重写父类方法
	public String mysqlL(String UserId,String UserPassword){
		
		//消息提示
		
		boolean login = false;
		
		
		//判断输入是否正确
		if(UserId.length()<1||UserPassword.length()<1){
			Tessg = "请输入正确的账号或密码";
		}else{
			login = true;
		}  
		
		//操作数据库查询
		if(login==true){
			try {
				
				//加载数据库驱动
				Class.forName("com.mysql.jdbc.Driver");
				
				
				//获得数据库链接
				Connection conn = DriverManager.getConnection(URL, USER, PASSWORD);
				
				
				//操作数据库增删改查
				Statement stmt = conn.createStatement(); 
				
				//写入数据表中某些字段的数据
				String sql =  "select*from userdata where user_id='"+UserId+"' and user_password='"+UserPassword+"'";
				
				
				//调用成功执行方法
				ResultSet re =stmt.executeQuery(sql);
						if(re!=null){
							while(re.next()){
								Tessg = "登陆成功";
								nameY = re.getInt("user_id");
								passwordY = re.getString("user_password");
								idname = re.getString("idname");
								dateY = re.getString("timed");
								purchase = re.getFloat("balance");
							}
						}
						
						if(nameY==0){
							Tessg = "账号或密码错误,请重新输入";
						}
					
				
						//释放资源
						conse(conn,stmt);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally{
			}
		}else{
			
		}
		return Tessg;
	}
	
	
	//购买操作数据库
	public String purchase(float priceYE){
		
		//库存货币减去购买所需货币得到货币余额
		@SuppressWarnings("unused")
		float priceAC = purchase-priceYE;
		
		try {
			//加载数据库驱动
			Class.forName("com.mysql.jdbc.Driver");
			
			//获得数据库链接
			Connection conn = DriverManager.getConnection(URL,USER,PASSWORD);
			
			//操作数据库增删改查
			Statement stmt = conn.createStatement();
			
			//写入对数据库操作的语言
			String sql =  "update userdata set balance='"+priceAC+"' where user_id='"+nameY+"'";
			
			//调用执行方法
			int re = stmt.executeUpdate(sql);
			
			if(purchase>0&&re==1){
				Tessg="购买完毕";
			}else{
				Tessg="购买失败,请检查余额选择充值";
			}
			System.out.println(re);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
		
	}
}
