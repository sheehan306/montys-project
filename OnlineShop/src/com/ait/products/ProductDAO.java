package com.ait.products;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;



public class ProductDAO {

    public List<Product> findAll() {
        List<Product> list = new ArrayList<Product>();
        Connection c = null;
    	String sql = "SELECT * FROM products ORDER BY name";
        try {
            c = ConnectionHelper.getConnection();
            Statement s = c.createStatement();
            ResultSet rs = s.executeQuery(sql);
            while (rs.next()) {
                list.add(processRow(rs));
            }
        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException(e);
		} finally {
			ConnectionHelper.close(c);
		}
        return list;
    }

    
   
    protected Product processRow(ResultSet rs) throws SQLException {
        Product product = new Product();
        product.setId(rs.getInt("id"));
        product.setName(rs.getString("name"));
        product.setBrand(rs.getString("brand"));
        product.setColour(rs.getString("colour"));
        product.setType(rs.getString("type"));
        product.setSeason(rs.getString("season"));
        product.setDescription(rs.getString("description"));
        product.setPrice(rs.getString("price"));
        product.setPicture(rs.getString("pic"));
        return product;
    }


    public Product findById(int id){
		String sql = "SELECT * FROM products WHERE id = ?";
		Product product = null;
		Connection c = null;
		
		try{
			c = ConnectionHelper.getConnection();
			PreparedStatement ps =c.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			if(rs.next()){
				product = processRow(rs);
			}
		}catch (Exception e){
			e.printStackTrace();
			throw new RuntimeException(e);
		}finally{
			ConnectionHelper.close(c);
		}
		return product;
	}
    
}

