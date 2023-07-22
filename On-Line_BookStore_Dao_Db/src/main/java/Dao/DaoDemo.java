package Dao;

import web.*;

public class DaoDemo {
	public static void main(String[] args) {
		BookDao b = new BookDaoImpDb();
		for(Book book: b.getAllBooks()) {
			System.out.println(book);
		}
		
		//System.out.println(b.getBook("1"));
	}
}
