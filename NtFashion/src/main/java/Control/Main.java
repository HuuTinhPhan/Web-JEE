package Control;

import java.util.List;

import Modle.Products;

public class Main {

	public static void main(String[] args) {
		DAO dao = new DaoImplement();
		/*
		 * for(Products product:dao.getProducts()) { System.out.println(product); }
		 */

//		String c = dao.getCategoryName(5);
//		System.out.println(c);

//		String[] images = {"../images/bag-orange.jfif", "../images/bag-pink.jfif", "../images/bag-yellow.jfif"};
//		String[] colors = {"orange", "pink", "yellow"};
//		String[] sizes = {"S", "M", "L", "XL", "XXL", "3XL"};
//		Products a = new Products("Waist bag", 1, 3, images, colors, sizes, "Description of waist bag", 16.99);
//		dao.addProduct(a);
//		Products product = dao.getProduct(7);
//		System.out.println(product);
//		dao.removeProduct(product);
		List<Products> list = dao.getProducts();
		for (Products product : list) {
			System.out.println(product);
		}
//		dao.removeProduct("9");
//		for (Products product : list) {
//			System.out.println(product);
//		}
		String[] images = {"images/bag-orange.jfif", "images/bag-pink.jfif", "images/bag-yellow.jfif"};
		String[] colors = {"orange", "pink", "yellow"};
		String[] sizes = {"S", "M", "L", "XL", "XXL", "3XL"};
		Products p = new Products("Waist bag", 1, 3, images, colors, sizes, "Description of waist bag", 16.99);
		
		Boolean a = dao.addProduct(p);
		System.out.println(a);
	}

}
