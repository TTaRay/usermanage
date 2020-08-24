package com.citywy.service;

import com.citywy.domain.Know;
import com.citywy.util.DBConnUtil;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


public class KnowService {
    //获取共计多少条数据
    public int getRowCount(){
        //计算一共多少条
        int rowcount=0;
        ResultSet rscount= DBConnUtil.executeQueryRS("select count(*) from know", null);
        try {
            while(rscount.next()){
                rowcount=rscount.getInt(1);
            }
        } catch (SQLException e1) {
            e1.printStackTrace();
        }
        return rowcount;
    }

    //常识列表分页
    public List<Know> getKnowList(int pageNow, int pageSize){
        List<Know> list=new ArrayList<Know>();
        //查询分页语句
        String sql="select * from know order by id asc limit "+(pageNow-1)*pageSize+","+pageSize;
        ResultSet rs=DBConnUtil.executeQueryRS(sql, null);
        Know know=null;
        try {
            while(rs.next()){
                know=new Know();
                know.setId(rs.getInt(1));
                know.setTitle(rs.getString(2));
                know.setLogo(rs.getString(4));
                know.setEsave(rs.getDate(10));
                list.add(know);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally{
            DBConnUtil.close(DBConnUtil.getRs(), DBConnUtil.getPstmt(), DBConnUtil.getConn());
        }
        return list;
    }

    //删除单独某一条
    public boolean delKnow(String id){
        boolean b=false;
        if(id!=null && !"".equals(id)){
            String sql="delete from know where id=?";
            String [] parameters={id};
            b=DBConnUtil.executeUpdate(sql, parameters);
        }
        return b;
    }
}