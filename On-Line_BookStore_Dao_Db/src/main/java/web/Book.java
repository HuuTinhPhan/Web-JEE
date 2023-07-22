package web;


public class Book {
	private String bookID;
	private String title;
	private String title_plus;
	private String description;
	private double price;
	
	public String toString() {
		return bookID + "\t"+ title + "\t" + title_plus + "\t"   + description+ "\t" + price ;
	}
	public Book() {}
	public Book(String i, String title,String title_plus, String description, double price) {
		this.setBookID(i);
		this.setTitle(title);
		this.setTitle_plus(title_plus);
		this.setDescription(description);
		this.setPrice(price);
		
	}
	public String getBookID() {
		return bookID;
	}
	public void setBookID(String i) {
		this.bookID = i;
	}
	public String getTitle() {
		return title;
	}
	public String getTitle_plus() {
		return title_plus;
	}
	public void setTitle_plus(String title_plus) {
		this.title_plus = title_plus;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	
}