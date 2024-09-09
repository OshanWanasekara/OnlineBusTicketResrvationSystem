package com.manager;

public class ResCancellation {
	private int id;
	private String User_name;
	private String Reference_Id;
	private String Email;
	private String Reason;
	private String Bank_Details;
	
	public ResCancellation(int id, String user_name, String reference_Id, String email, String reason,
			String bank_Details) {
		
		this.id = id;
		this.User_name = user_name;
		this.Reference_Id = reference_Id;
		this.Email = email;
		this.Reason = reason;
		this.Bank_Details = bank_Details;
	}

	public int getId() {
		return id;
	}

	

	public String getUser_name() {
		return User_name;
	}


	public String getReference_Id() {
		return Reference_Id;
	}

	

	public String getEmail() {
		return Email;
	}

	
	public String getReason() {
		return Reason;
	}


	public String getBank_Details() {
		return Bank_Details;
	}

	

}
