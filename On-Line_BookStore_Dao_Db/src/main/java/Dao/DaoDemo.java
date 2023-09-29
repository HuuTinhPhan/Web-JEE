package Dao;

import web.*;

public class DaoDemo {
	public static void main(String[] args) {
		BookDao b = new BookDaoImpDb();
		System.out.println(b.getBook("5")); 

		System.out.println();
		/*Book D = b.getBook("5");
		b.deleteBook(D);
		*/
		Book A = new Book("","The Harry Potter Series", "by J.K. Rowling", "The first five of the popular stories about wizard-in-training Harry Potter topped both the adult and children''s best-seller lists. Series includes <I>Harry Potter and the Sorcerer''s Stone</I>, <I>Harry Potter and the Chamber of Secrets</I>, <I>Harry Potter and the Prisoner of Azkaban</I>, <I>Harry Potter and the Goblet of Fire</I>, <I>Harry Potter and the Order of the Phoenix</I>.", 59.95);
		b.addBook(A);
		for(Book book:b.getAllBooks()) {
			System.out.println(book);
		}
	/*	Book B = b.getBook("1");
		System.out.println(B);
		
		
		B.setPrice(1);
		b.updateBook(B);
		System.out.println(B);
		 
		System.out.println("-------------------------");
		for(Book book:b.getAllBooks()) {
			System.out.println(book);
		}*/
	}
}
