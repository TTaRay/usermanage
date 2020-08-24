package com.citywy.util;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;


public class DBConnUtil {
    private static Connection conn=null;
    private static PreparedStatement pstmt=null;
    private static ResultSet rs=null;
    //连接数据库参数
    private static String url="";
    private static String username="";
    private static String password="";
    private static String driver="";
    //读取配置文件
    private static Properties pp=null;
    private static InputStream ins=null;
    //执行静态代码块
    static{
        try {
            pp=new Properties();
            ins=DBConnUtil.class.getClassLoader().getResourceAsStream("dbconn.properties");
            pp.load(ins);
            url=pp.getProperty("url");
            username=pp.getProperty("user");
            password=pp.getProperty("pass");
            driver=pp.getProperty("driver");
            Class.forName(driver);
        } catch (Exception e) {
            e.printStackTrace();
        }finally{
            try {
                ins.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
            ins=null;
        }
    }

    /**
     * 获取连接
     * @return
     */
    public static Connection getConnection(){
        try {
            conn=DriverManager.getConnection(url,username,password);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return conn;
    }

    /**
     * 关闭资源
     * @param rs
     * @param pstmt
     * @param conn
     */
    public static void close(ResultSet rs,PreparedStatement pstmt,Connection conn){
        if(rs!=null){
            try {
                rs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if(pstmt!=null){
            try {
                pstmt.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
            pstmt=null;
        }
        if(conn!=null){
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
            conn=null;
        }
    }

    /**
     * 统一的select
     * @param sql
     * @param parameters
     * @return 返回结果集ResultSet
     */
    public static ResultSet executeQueryRS(String sql,String []parameters){
        try {
            conn=getConnection();
            pstmt=conn.prepareStatement(sql);
            if(parameters!=null && !"".equals(parameters)){
                for(int i=0;i<parameters.length;i++){
                    pstmt.setString(i+1, parameters[i]);
                }
            }
            rs=pstmt.executeQuery();
        } catch (Exception e) {
            e.printStackTrace();
        }finally{
            //close(rs,pstmt,conn);
        }
        return rs;
    }

    /**
     * 统一的select升级哪里使用资源哪里关闭资源;
     * 光是try中return是不行的，如果中间发生错误会进入catch，所以catch中要么throw抛出异常，要么就也需要return;
     * @param sql
     * @param parameters
     * @return  返回ArrayList
     */
    public static ArrayList executeQueryList(String sql,String [] parameters){
        PreparedStatement pstmt=null;
        Connection conn=null;
        ResultSet rs=null;
        try {
            conn=getConnection();
            pstmt=conn.prepareStatement(sql);
            if(parameters!=null && !"".equals(parameters)){
                for(int i=0;i<parameters.length;i++){
                    pstmt.setString(i+1, parameters[i]);
                }
            }
            rs=pstmt.executeQuery();
            ArrayList al=new ArrayList();
            ResultSetMetaData rsmd=rs.getMetaData();
            int column=rsmd.getColumnCount();
            while(rs.next()){
                Object [] ob=new Object[column];
                for(int i=1;i<=column;i++){
                    ob[i-1]=rs.getObject(i);
                }
            }
            return al;
        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException(e.getMessage());
        } finally {
            close(rs,pstmt,conn);
        }
    }

    /**
     * 统一的executeUpdate
     * @param sql
     * @param parameters
     * @return boolean
     */
    public static boolean executeUpdate(String sql,String []parameters){
        boolean b=false;
        int num=0;
        try {
            conn=getConnection();
            pstmt=conn.prepareStatement(sql);
            if(parameters!=null&&!parameters.equals("")){
                for(int i=0;i<parameters.length;i++){
                    pstmt.setString(i+1, parameters[i]);
                }
            }
            num=pstmt.executeUpdate();
            if(num>0){
                b=true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally{
            close(rs,pstmt,conn);
        }
        return b;
    }

    public static Connection getConn() {
        return conn;
    }
    public static PreparedStatement getPstmt() {
        return pstmt;
    }
    public static ResultSet getRs() {
        return rs;
    }
}
