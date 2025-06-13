# DomainsGetDomain200ResponseCertificateRequestStatus


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**issued** | **bool** |  |
**reason** | **str** |  |

## Example

```python
from codesphere_sdk.models.domains_get_domain200_response_certificate_request_status import DomainsGetDomain200ResponseCertificateRequestStatus

# TODO update the JSON string below
json = "{}"
# create an instance of DomainsGetDomain200ResponseCertificateRequestStatus from a JSON string
domains_get_domain200_response_certificate_request_status_instance = DomainsGetDomain200ResponseCertificateRequestStatus.from_json(json)
# print the JSON string representation of the object
print(DomainsGetDomain200ResponseCertificateRequestStatus.to_json())

# convert the object into a dict
domains_get_domain200_response_certificate_request_status_dict = domains_get_domain200_response_certificate_request_status_instance.to_dict()
# create an instance of DomainsGetDomain200ResponseCertificateRequestStatus from a dict
domains_get_domain200_response_certificate_request_status_from_dict = DomainsGetDomain200ResponseCertificateRequestStatus.from_dict(domains_get_domain200_response_certificate_request_status_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
