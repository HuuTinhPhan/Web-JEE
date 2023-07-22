package web;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import Dao.*;

public class ShopingCart {
	private List<Item> itemsOrdered;
	//BookDao b = new BookDaoImpDb();

	public ShopingCart() {
		itemsOrdered = new ArrayList<>();
	}

	public List<Item> getItemsOrdered() {
		return (itemsOrdered);
	}

	public synchronized void addItem(String itemID) throws IOException {
		for (Item order: itemsOrdered ) {
			if (order.getBookId().equals (itemID)) {
				order.updateOrder();
				return;
			}
		}
		Item newOrder = new Item(Connect.getItem(itemID));
		itemsOrdered.add(newOrder);
	}

	public synchronized void setNumOrdered(String itemID, int numOrdered) throws IOException {
		for (Item order: itemsOrdered ) {
			if (order.getBookId().equals(itemID)) {
				if (numOrdered <= 0) {
					itemsOrdered.remove(order);
				} else {
					order.setNumber(numOrdered);
				}
				return;
			}
		}
		Item newOrder = new Item(Connect.getItem(itemID));
		itemsOrdered.add(newOrder);
	}
}
