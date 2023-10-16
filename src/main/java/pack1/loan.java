package pack1;

public class loan {
	private int loanNo;
	private String name;
	private String email;
	private String appAmount;
	private String type;
	private String reason;
	
	public loan(int loanNo, String name, String email, String appAmount, String type, String reason) {
		super();
		this.loanNo = loanNo;
		this.name = name;
		this.email = email;
		this.appAmount = appAmount;
		this.type = type;
		this.reason = reason;
	}

	public int getLoanNo() {
		return loanNo;
	}

	public String getName() {
		return name;
	}

	public String getEmail() {
		return email;
	}

	public String getAppAmount() {
		return appAmount;
	}

	public String getType() {
		return type;
	}

	public String getReason() {
		return reason;
	}
	
}


