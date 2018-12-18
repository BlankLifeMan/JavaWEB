package cn.niit.jdbc.domain;

public class UserLogin {

	private int userloginID;
	private String username;
	private String phonenumber;
	private String password;
	private String mailbox;
	private String img;
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public int getUserloginID() {
		return userloginID;
	}
	public void setUserloginID(int userloginID) {
		this.userloginID = userloginID;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPhonenumber() {
		return phonenumber;
	}
	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getMailbox() {
		return mailbox;
	}
	public void setMailbox(String mailbox) {
		this.mailbox = mailbox;
	}
	
	
}
