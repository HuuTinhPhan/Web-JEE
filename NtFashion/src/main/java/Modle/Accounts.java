package Modle;

public class Accounts {
	private int account_id;
	private String email;
	private String username;
	private String password;
	public Accounts(int account_id, String email, String username,String password ) {
		this.setAccount_id(account_id);
		this.setEmail(email);
		this.setAccount_id(account_id);
		this.setPassword(password);
	}
	public int getAccount_id() {
		return account_id;
	}
	public void setAccount_id(int account_id) {
		this.account_id = account_id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

}
