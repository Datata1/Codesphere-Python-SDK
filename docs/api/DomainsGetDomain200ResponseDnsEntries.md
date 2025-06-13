# DomainsGetDomain200ResponseDnsEntries


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**a** | **str** |  | 
**cname** | **str** |  | 
**txt** | **str** |  | 

## Example

```python
from codesphere_sdk.models.domains_get_domain200_response_dns_entries import DomainsGetDomain200ResponseDnsEntries

# TODO update the JSON string below
json = "{}"
# create an instance of DomainsGetDomain200ResponseDnsEntries from a JSON string
domains_get_domain200_response_dns_entries_instance = DomainsGetDomain200ResponseDnsEntries.from_json(json)
# print the JSON string representation of the object
print(DomainsGetDomain200ResponseDnsEntries.to_json())

# convert the object into a dict
domains_get_domain200_response_dns_entries_dict = domains_get_domain200_response_dns_entries_instance.to_dict()
# create an instance of DomainsGetDomain200ResponseDnsEntries from a dict
domains_get_domain200_response_dns_entries_from_dict = DomainsGetDomain200ResponseDnsEntries.from_dict(domains_get_domain200_response_dns_entries_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


