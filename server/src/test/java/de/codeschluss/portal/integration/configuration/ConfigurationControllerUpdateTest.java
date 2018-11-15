package de.codeschluss.portal.integration.configuration;

import static org.assertj.core.api.Assertions.assertThat;

import java.net.URISyntaxException;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.hateoas.Resource;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.authentication.AuthenticationCredentialsNotFoundException;
import org.springframework.security.test.context.support.WithUserDetails;
import org.springframework.test.context.junit4.SpringRunner;

import de.codeschluss.portal.common.exception.DuplicateEntryException;
import de.codeschluss.portal.functional.configuration.ConfigurationController;
import de.codeschluss.portal.functional.configuration.ConfigurationEntity;

@RunWith(SpringRunner.class)
@SpringBootTest
public class ConfigurationControllerUpdateTest {
	
	@Autowired
	private ConfigurationController controller;
	
	@Test
	@WithUserDetails("super@user")
	public void updateSuperUserOK() throws URISyntaxException {
		ConfigurationEntity configuration = new ConfigurationEntity("updateSuperUserOK", "updateSuperUserOK");	
		String configurationId = "00000000-0000-0000-0001-000000000008";
		
		controller.update(configuration, configurationId);
		
		Resource<ConfigurationEntity> result = (Resource<ConfigurationEntity>) controller.findOne(configurationId);
		assertThat(result.getContent().getItem()).isEqualTo(configuration.getItem());
	}
	
	@Test(expected = DuplicateEntryException.class)
	@WithUserDetails("super@user")
	public void updateSuperUserDuplicatedName() throws URISyntaxException {
		ConfigurationEntity configuration = new ConfigurationEntity("configuration1","updateSuperUserDuplicatedName");	
		String configurationId = "00000000-0000-0000-0001-000000000009";
		
		controller.update(configuration, configurationId);
	}
	
	@Test(expected = AccessDeniedException.class)
	@WithUserDetails("provider1@user")
	public void updateProviderUserDenied() throws URISyntaxException {
		ConfigurationEntity configuration = new ConfigurationEntity("updateProviderUserDenied", "updateProviderUserDenied");		
		String configurationId = "00000000-0000-0000-0001-000000000001";
		
		controller.update(configuration, configurationId);
	}
	
	@Test(expected = AuthenticationCredentialsNotFoundException.class)
	public void updateNoUserDenied() throws URISyntaxException {
		ConfigurationEntity configuration = new ConfigurationEntity("updateNoUserDenied", "updateNoUserDenied");		
		String configurationId = "00000000-0000-0000-0001-000000000001";
		
		controller.update(configuration, configurationId);
	}

}