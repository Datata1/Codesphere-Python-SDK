# DomainsGetDomain200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**team_id** | **int** |  | 
**data_center_id** | **int** |  | 
**workspaces** | **Dict[str, List[int]]** |  | 
**name** | **str** |  | 
**certificate_request_status** | [**DomainsGetDomain200ResponseCertificateRequestStatus**](DomainsGetDomain200ResponseCertificateRequestStatus.md) |  | 
**dns_entries** | [**DomainsGetDomain200ResponseDnsEntries**](DomainsGetDomain200ResponseDnsEntries.md) |  | 
**domain_verification_status** | [**DomainsGetDomain200ResponseDomainVerificationStatus**](DomainsGetDomain200ResponseDomainVerificationStatus.md) |  | 
**custom_config_revision** | **int** |  | [optional] 
**custom_config** | [**DomainsGetDomain200ResponseCustomConfig**](DomainsGetDomain200ResponseCustomConfig.md) |  | [optional] 

## Example

```python
from codesphere_sdk.models.domains_get_domain200_response import DomainsGetDomain200Response

# TODO update the JSON string below
json = "{}"
# create an instance of DomainsGetDomain200Response from a JSON string
domains_get_domain200_response_instance = DomainsGetDomain200Response.from_json(json)
# print the JSON string representation of the object
print(DomainsGetDomain200Response.to_json())

# convert the object into a dict
domains_get_domain200_response_dict = domains_get_domain200_response_instance.to_dict()
# create an instance of DomainsGetDomain200Response from a dict
domains_get_domain200_response_from_dict = DomainsGetDomain200Response.from_dict(domains_get_domain200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


