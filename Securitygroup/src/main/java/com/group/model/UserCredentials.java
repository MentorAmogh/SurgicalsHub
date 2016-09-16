package com.group.model;
public class UserCredentials {
private String UserId;
private String UPassword;
private String role="User";
private boolean status =true;
public String getUserId() {
	return UserId;
}
public void setUserId(String userId) {
	UserId = userId;
}
public String getUPassword() {
	return UPassword;
}
public void setUPassword(String uPassword) {
	UPassword = uPassword;
}
public String getRole() {
	return role;
}
public void setRole(String role) {
	this.role = role;
}
public boolean isStatus() {
	return status;
}
public void setStatus(boolean status) {
	this.status = status;
}

}


