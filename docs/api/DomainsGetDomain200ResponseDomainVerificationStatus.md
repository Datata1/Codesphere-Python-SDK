# DomainsGetDomain200ResponseDomainVerificationStatus


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**verified** | **bool** |  | 
**reason** | **str** |  | 

## Example

```python
from codesphere_sdk.models.domains_get_domain200_response_domain_verification_status import DomainsGetDomain200ResponseDomainVerificationStatus

# TODO update the JSON string below
json = "{}"
# create an instance of DomainsGetDomain200ResponseDomainVerificationStatus from a JSON string
domains_get_domain200_response_domain_verification_status_instance = DomainsGetDomain200ResponseDomainVerificationStatus.from_json(json)
# print the JSON string representation of the object
print(DomainsGetDomain200ResponseDomainVerificationStatus.to_json())

# convert the object into a dict
domains_get_domain200_response_domain_verification_status_dict = domains_get_domain200_response_domain_verification_status_instance.to_dict()
# create an instance of DomainsGetDomain200ResponseDomainVerificationStatus from a dict
domains_get_domain200_response_domain_verification_status_from_dict = DomainsGetDomain200ResponseDomainVerificationStatus.from_dict(domains_get_domain200_response_domain_verification_status_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


