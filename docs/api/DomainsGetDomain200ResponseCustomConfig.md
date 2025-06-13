# DomainsGetDomain200ResponseCustomConfig


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**max_body_size_mb** | **float** |  | [optional] 
**max_connection_timeout_s** | **float** |  | [optional] 
**use_regex** | **bool** |  | [optional] 
**restricted** | **bool** |  | [optional] 

## Example

```python
from codesphere_sdk.models.domains_get_domain200_response_custom_config import DomainsGetDomain200ResponseCustomConfig

# TODO update the JSON string below
json = "{}"
# create an instance of DomainsGetDomain200ResponseCustomConfig from a JSON string
domains_get_domain200_response_custom_config_instance = DomainsGetDomain200ResponseCustomConfig.from_json(json)
# print the JSON string representation of the object
print(DomainsGetDomain200ResponseCustomConfig.to_json())

# convert the object into a dict
domains_get_domain200_response_custom_config_dict = domains_get_domain200_response_custom_config_instance.to_dict()
# create an instance of DomainsGetDomain200ResponseCustomConfig from a dict
domains_get_domain200_response_custom_config_from_dict = DomainsGetDomain200ResponseCustomConfig.from_dict(domains_get_domain200_response_custom_config_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


