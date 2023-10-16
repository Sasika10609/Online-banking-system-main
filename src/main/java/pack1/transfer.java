package pack1;

public class transfer {
	private int id;
	private String sender;
	private String type;
	private String amount;
	private String reciever;
	private String reff;
	
	public transfer(int id, String sender, String type, String amount, String reciever, String reff) {
		super();
		this.id = id;
		this.sender = sender;
		this.type = type;
		this.amount = amount;
		this.reciever = reciever;
		this.reff = reff;
	}

	public int getId() {
		return id;
	}

	public String getSender() {
		return sender;
	}

	public String getType() {
		return type;
	}

	public String getAmount() {
		return amount;
	}

	public String getReciever() {
		return reciever;
	}

	public String getReff() {
		return reff;
	}
	
}
