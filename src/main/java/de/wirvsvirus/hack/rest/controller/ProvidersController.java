package de.wirvsvirus.hack.rest.controller;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.util.Pair;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.server.ResponseStatusException;

import com.google.gson.Gson;
import com.google.gson.JsonObject;

import de.wirvsvirus.hack.application.ApplicationConfiguration;
import de.wirvsvirus.hack.backend.dao.OfferEntity;
import de.wirvsvirus.hack.backend.dao.ProviderEntity;
import de.wirvsvirus.hack.backend.dao.repository.OfferRepository;
import de.wirvsvirus.hack.backend.dao.repository.ProviderRepository;
import de.wirvsvirus.hack.rest.model.Address;
import de.wirvsvirus.hack.rest.model.ProviderModel;
import de.wirvsvirus.hack.rest.model.ProviderRegisterModel;
import de.wirvsvirus.hack.rest.model.UserModel;
import io.swagger.annotations.ApiOperation;

@RestController
@RequestMapping("/providers")
public class ProvidersController {

	@Autowired
	private ApplicationConfiguration appConfig;

	@Autowired
	private RestTemplate restTemplate;

	@Autowired
	private OfferRepository offerRepository;

	@Autowired
	private ProviderRepository providerRepository;

	@ApiOperation(value = "get provider with given id")
	@RequestMapping(path = "/{id}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public ProviderModel getProvider(@PathVariable("id") int providerId) {
		ProviderEntity pe = getProviderEntity(providerId);
		return ProviderModel.fromEntity(pe);
	}

	@ApiOperation(value = "delete provider with given id")
	@RequestMapping(path = "/{id}", method = RequestMethod.DELETE, produces = MediaType.TEXT_PLAIN_VALUE)
	public String deleteProvider(@PathVariable("id") int providerId) {
		this.providerRepository.deleteById(providerId);
		return "deleted";
	}

	@ApiOperation(value = "register a new provider")
	@RequestMapping(method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	public ProviderModel registerProvider(
			@RequestBody ProviderRegisterModel registerModel) {
		ProviderModel providerModel = ProviderModel
				.fromRegisterModel(registerModel);
		return insertOrUpdate(providerModel);
	}

	@ApiOperation(value = "get all offers for given provider")
	@RequestMapping(path = "/{id}/offers", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public List<UserModel> getOffers(@PathVariable("id") int providerId) {
		List<OfferEntity> oe = this.offerRepository
				.findByProviderId(providerId);
		return oe.stream().map(entity -> UserModel.fromEntity(entity.getUser()))
				.collect(Collectors.toList());
	}

	@ApiOperation(value = "update given provider with provided model")
	@RequestMapping(path = "/{id}", method = RequestMethod.PUT, produces = MediaType.APPLICATION_JSON_VALUE)
	public ProviderModel updateProvider(@PathVariable("id") int providerId,
			@RequestBody ProviderRegisterModel registerModel) {
		ProviderModel providerModel = ProviderModel
				.fromRegisterModel(registerModel);
		providerModel.setProviderId(providerId);
		return insertOrUpdate(providerModel);
	}

	private ProviderModel insertOrUpdate(ProviderModel model) {
		Pair<Double, Double> latLong = getLatLongForAddress(model.getAddress());
		model.setLatitude(latLong.getFirst());
		model.setLongitude(latLong.getSecond());
		ProviderEntity pe = ProviderModel.toEntity(model);
		pe = this.providerRepository.saveAndFlush(pe);

		model.setProviderId(pe.getT_id());
		return model;
	}

	private ProviderEntity getProviderEntity(int providerId) {
		Optional<ProviderEntity> peOpt = this.providerRepository
				.findById(providerId);
		if (peOpt.isPresent()) {
			return peOpt.get();
		}
		throw new ResponseStatusException(HttpStatus.NOT_FOUND);
	}

	private Pair<Double, Double> getLatLongForAddress(Address address) {
		String result = restTemplate
				.getForEntity(getLatLongUrl(address), String.class).getBody();
		JsonObject latLongCall = new Gson().fromJson(result, JsonObject.class);
		if (latLongCall == null || latLongCall.has("error")) {
			throw new ResponseStatusException(HttpStatus.BAD_REQUEST,
					"Adresse konnte nicht ermittelt werden");
		}
		return Pair.of(latLongCall.get("latt").getAsDouble(),
				latLongCall.get("longt").getAsDouble());
	}

	private String getLatLongUrl(Address address) {
		StringBuffer addressUrlPrepare = new StringBuffer();
		addressUrlPrepare.append(address.getStreet());
		addressUrlPrepare.append("+");
		addressUrlPrepare.append(address.getHousenr());
		addressUrlPrepare.append("+");
		addressUrlPrepare.append(address.getZip());
		addressUrlPrepare.append("+");
		addressUrlPrepare.append(address.getCity());

		String url = appConfig.getRestEndpoint().replace("{ADR}",
				addressUrlPrepare.toString());

		return url;
	}

}
