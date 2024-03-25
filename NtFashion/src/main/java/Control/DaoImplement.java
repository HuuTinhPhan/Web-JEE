package Control;

import java.math.BigDecimal;
import java.sql.Array;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Modle.Categories;
import Modle.Products;
import ConnectDB.Connect;

public class DaoImplement implements DAO {
	@SuppressWarnings("unused")
	private Connection connection;
	List<Products> list;
	List<Categories> listCategory;

	public DaoImplement() {
		list = new ArrayList<Products>();
		listCategory = new ArrayList<Categories>();
		connection = Connect.getConnection();
	}

	@Override
	public List<Products> getProducts() {
		try {
			String sql = "SELECT product_id, product_name, supplier_id, category_id, images, colors, sizes, description, price FROM products ORDER BY product_id ASC";
			PreparedStatement ps = connection.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Products product = new Products(Integer.parseInt(rs.getString("product_id")),
						rs.getString("product_name"), Integer.parseInt(rs.getString("supplier_id")),
						Integer.parseInt(rs.getString("category_id")), (String[]) rs.getArray("images").getArray(),
						(String[]) rs.getArray("colors").getArray(), (String[]) rs.getArray("sizes").getArray(),
						rs.getString("description"), rs.getDouble("price"));
				list.add(product);
			}
			return list;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public Products getProduct(int product_id) {
		Products product = null;
		try {
			String sql = "SELECT * FROM products WHERE product_id = ?";
			PreparedStatement ps = connection.prepareStatement(sql);
			ps.setInt(1, product_id);
			ResultSet rs = ps.executeQuery();
			
			if (rs.next()) {
				product = new Products(Integer.parseInt(rs.getString("product_id")), 
						rs.getString("product_name"),
						Integer.parseInt(rs.getString("supplier_id")), 
						Integer.parseInt(rs.getString("category_id")),
						(String[]) rs.getArray("images").getArray(), 
						(String[]) rs.getArray("colors").getArray(),
						(String[]) rs.getArray("sizes").getArray(),
						rs.getString("description"), 
						rs.getDouble("price"));
			}
			return product;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public String getCategoryName(int category_id) {
		String categoryName = "";
		try {
			String sql = "SELECT category_name FROM categories WHERE category_id = ?";
			PreparedStatement ps = Connect.getConnection().prepareStatement(sql);
			ps.setInt(1, category_id);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				categoryName = rs.getString("category_name");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return categoryName;
	}


	@Override
	public void removeProduct(String product_id) {
		try {
			String sql = "DELETE FROM products WHERE product_id = ?";
			PreparedStatement ps = connection.prepareStatement(sql);
			ps.setInt(1, Integer.parseInt(product_id));
			ps.executeUpdate();
			System.out.println("Remove successful");

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void updateProduct(Products product) {
		// TODO Auto-generated method stub

	}

	@Override
	public boolean addProduct(Products product) {
	    try {
	        // Kiểm tra sự tồn tại của sản phẩm với cùng tên
	        String checkSql = "SELECT COUNT(*) FROM products WHERE product_name = ?";
	        PreparedStatement checkPs = connection.prepareStatement(checkSql);
	        checkPs.setString(1, product.getProduct_name());
	        ResultSet checkRs = checkPs.executeQuery();
	        checkRs.next();
	        
	        int count = checkRs.getInt(1);
	        if (count > 0) {
	            // Sản phẩm đã tồn tại, không thêm vào cơ sở dữ liệu
	            return false;
	        }
	        
	        // Thêm sản phẩm vào cơ sở dữ liệu
	        String sql = "INSERT INTO products(product_name, supplier_id ,category_id, images, colors, sizes, description, price) VALUES (?,?,?,?,?,?,?,?)";
			PreparedStatement ps = connection.prepareStatement(sql);
			ps.setString(1, product.getProduct_name());
			ps.setInt(2, product.getSupplier_id());
			ps.setInt(3, product.getCategory_id());
			Array imageArray = connection.createArrayOf("text", product.getImages());
			ps.setArray(4, imageArray);
			Array colorArray = connection.createArrayOf("text", product.getColors());
			ps.setArray(5, colorArray);
			Array sizeArray = connection.createArrayOf("text", product.getSizes());
			ps.setArray(6, sizeArray);
			ps.setString(7, product.getDescription());
			ps.setBigDecimal(8, BigDecimal.valueOf(product.getPrice()));
	
			ps.executeUpdate();
	        
	        return true;
	        
	    } catch (Exception e) {
	        // Xử lý ngoại lệ (Exception handling)
	        e.printStackTrace(); // In thông tin lỗi ra để kiểm tra và gỡ rối
	    }
	    
	    return false;
	}

}
