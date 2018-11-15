package de.codeschluss.portal.common.security.jwt;

import java.util.Collections;

import org.springframework.security.core.userdetails.User;

import de.codeschluss.portal.functional.user.UserEntity;
import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper = true)
public class JWTUserDetails extends User {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private UserEntity user;
	private String[] approvedOrganisations;
	private String[] adminOrgas;
	private String[] createdActivities;

	public JWTUserDetails(UserEntity user, 
			String[] approvedOrgas, 
			String[] adminOrgas,
			String[] createdActivities) {
		super(user.getUsername(), user.getPassword(), Collections.emptyList());
		this.user = user;
		this.approvedOrganisations = approvedOrgas;
		this.adminOrgas = adminOrgas;
		this.createdActivities = createdActivities;
	}
	
	public JWTUserDetails(UserEntity user) {
		super(user.getUsername(), user.getPassword(), Collections.emptyList());
		this.user = user;
	}
	
	public boolean isSuperUser() {
		return this.user.isSuperuser();
	}
}