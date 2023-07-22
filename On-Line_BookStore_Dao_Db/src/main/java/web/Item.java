package web;

import java.text.DecimalFormat;
public class Item {
	private Book item;
	private int number;
	public Item(Book item) {
		this.setItem(item);
		this.setNumber(1);
	}
	public Book getItem() {
		return item;
	}
	public void setItem(Book item) {
		this.item = item;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public String getBookId() {
		return(this.item.getBookID());
	}
	public String getDescription() {
		return (this.item.getDescription());
	}
	
	public String getTitle() {
		return (this.item.getTitle());
	}
	public String getTitle_Plus() {
		return (this.item.getTitle_plus());
	}
	public double getPrice() {
		return (this.item.getPrice());
	}
	public void updateOrder() {
		this.setNumber(this.getNumber() + 1);
	}

	public void cancelOrder() {
		this.setNumber(0);
	}

	public double getTotalCost() {
	    DecimalFormat df = new DecimalFormat("#.00");
	    return Double.parseDouble(df.format(this.getNumber() * this.item.getPrice()));
	}
}

