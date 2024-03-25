package Modle;

public class Categories {
private int category_id;
private String category_name;


	public Categories(int cateegory_id, String cateegory_name) {
		this.setCateegory_id(cateegory_id);
		this.setCateegory_name(cateegory_name);
	}


	public int getCateegory_id() {
		return category_id;
	}


	public void setCateegory_id(int cateegory_id) {
		this.category_id = cateegory_id;
	}


	public String getCateegory_name() {
		return category_name;
	}


	public void setCateegory_name(String cateegory_name) {
		this.category_name = cateegory_name;
	}

}
