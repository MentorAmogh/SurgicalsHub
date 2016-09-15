package com.group.model;

public class Login {
private String UserId;
private String Password;
private String role="user";
private boolean enabled=true;
public String getUserId() {
	
	return UserId;
}
public void setUserId(String userId) {
	UserId = userId;
}
public String getRole() {
	return role;
}
public void setRole(String role) {
	this.role = role;
}
public boolean isEnabled() {
	return enabled;
}
public void setEnabled(boolean enabled) {
	this.enabled = enabled;
}
public String getPassword() {
	return Password;
}
public void setPassword(String uPassword) {
	Password = uPassword;
}

}
