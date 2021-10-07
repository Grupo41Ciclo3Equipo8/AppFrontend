package entities;

public class UsuarioDTO {

	 private int document;
	 private String email;
	 private String name;
	 private String password;
	 private String user;
	/**
	 * @param documento
	 * @param nomusuario
	 * @param clave
	 * @param rol
	 * @param estado
	 */

	
	public UsuarioDTO(int document, String email, String name, String password, String user) {
		super();
		this.document = document;
		this.email = email;
		this.name = name;
		this.password = password;
		this.user = user;
	}
	
	

	public UsuarioDTO() {
		
	}



	public int getDocument() {
		return document;
	}



	public void setDocument(int document) {
		this.document = document;
	}



	public String getEmail() {
		return email;
	}



	public void setEmail(String email) {
		this.email = email;
	}



	public String getName() {
		return name;
	}



	public void setName(String name) {
		this.name = name;
	}



	public String getPassword() {
		return password;
	}



	public void setPassword(String password) {
		this.password = password;
	}



	public String getUser() {
		return user;
	}



	public void setUser(String user) {
		this.user = user;
	}



	@Override
	public String toString() {
		return "UsuarioDTO [document=" + document + ", email=" + email + ", name=" + name + ", password=" + password
				+ ", user=" + user + "]";
	}


	
	


	 
}
 