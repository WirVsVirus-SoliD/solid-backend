package de.wirvsvirus.hack.rest.model;

import org.springframework.beans.BeanUtils;

import de.wirvsvirus.hack.backend.dao.UserEntity;
import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class UserResponseModel {

	private int userId;

	private String firstName;

	private String lastName;

	private String mobileNumber;

	private String email;

	private EmploymentStatus EmploymentStatus;

	private boolean fullTime;

	private int pickupRange;

	private boolean driverLicense;

	private boolean pickupRequired;

	public static UserResponseModel fromEntity(UserEntity entity) {
		UserResponseModel model = UserResponseModel.builder().build();
		BeanUtils.copyProperties(entity, model);
		model.setUserId(entity.getT_id());

		return model;
	}
}