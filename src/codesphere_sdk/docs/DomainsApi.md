# codesphere_sdk.DomainsApi

All URIs are relative to *https://codesphere.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**domains_create_domain**](DomainsApi.md#domains_create_domain) | **POST** /domains/team/{teamId}/domain/{domainName} | createDomain
[**domains_delete_domain**](DomainsApi.md#domains_delete_domain) | **DELETE** /domains/team/{teamId}/domain/{domainName} | deleteDomain
[**domains_get_domain**](DomainsApi.md#domains_get_domain) | **GET** /domains/team/{teamId}/domain/{domainName} | getDomain
[**domains_list_domains**](DomainsApi.md#domains_list_domains) | **GET** /domains/team/{teamId} | listDomains
[**domains_update_domain**](DomainsApi.md#domains_update_domain) | **PATCH** /domains/team/{teamId}/domain/{domainName} | updateDomain
[**domains_update_workspace_connections**](DomainsApi.md#domains_update_workspace_connections) | **PUT** /domains/team/{teamId}/domain/{domainName}/workspace-connections | updateWorkspaceConnections
[**domains_verify_domain**](DomainsApi.md#domains_verify_domain) | **POST** /domains/team/{teamId}/domain/{domainName}/verify | verifyDomain


# **domains_create_domain**
> DomainsGetDomain200Response domains_create_domain(team_id, domain_name)

createDomain

### Example

* Bearer Authentication (bearerAuth):

```python
import codesphere_sdk
from codesphere_sdk.models.domains_get_domain200_response import DomainsGetDomain200Response
from codesphere_sdk.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://codesphere.com/api
# See configuration.py for a list of all supported configuration parameters.
configuration = codesphere_sdk.Configuration(
    host = "https://codesphere.com/api"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization: bearerAuth
configuration = codesphere_sdk.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
async with codesphere_sdk.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = codesphere_sdk.DomainsApi(api_client)
    team_id = 3.4 # float |
    domain_name = 'foo.example.com' # str |

    try:
        # createDomain
        api_response = await api_instance.domains_create_domain(team_id, domain_name)
        print("The response of DomainsApi->domains_create_domain:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DomainsApi->domains_create_domain: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **team_id** | **float**|  |
 **domain_name** | **str**|  |

### Return type

[**DomainsGetDomain200Response**](DomainsGetDomain200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success. |  -  |
**400** | Path or request body variable does not match schema. |  -  |
**401** | Authorization information is missing or invalid. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **domains_delete_domain**
> domains_delete_domain(team_id, domain_name)

deleteDomain

### Example

* Bearer Authentication (bearerAuth):

```python
import codesphere_sdk
from codesphere_sdk.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://codesphere.com/api
# See configuration.py for a list of all supported configuration parameters.
configuration = codesphere_sdk.Configuration(
    host = "https://codesphere.com/api"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization: bearerAuth
configuration = codesphere_sdk.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
async with codesphere_sdk.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = codesphere_sdk.DomainsApi(api_client)
    team_id = 3.4 # float |
    domain_name = 'foo.example.com' # str |

    try:
        # deleteDomain
        await api_instance.domains_delete_domain(team_id, domain_name)
    except Exception as e:
        print("Exception when calling DomainsApi->domains_delete_domain: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **team_id** | **float**|  |
 **domain_name** | **str**|  |

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success. |  -  |
**400** | Path or request body variable does not match schema. |  -  |
**401** | Authorization information is missing or invalid. |  -  |
**404** | Domain not found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **domains_get_domain**
> DomainsGetDomain200Response domains_get_domain(team_id, domain_name)

getDomain

### Example

* Bearer Authentication (bearerAuth):

```python
import codesphere_sdk
from codesphere_sdk.models.domains_get_domain200_response import DomainsGetDomain200Response
from codesphere_sdk.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://codesphere.com/api
# See configuration.py for a list of all supported configuration parameters.
configuration = codesphere_sdk.Configuration(
    host = "https://codesphere.com/api"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization: bearerAuth
configuration = codesphere_sdk.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
async with codesphere_sdk.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = codesphere_sdk.DomainsApi(api_client)
    team_id = 3.4 # float |
    domain_name = 'foo.example.com' # str |

    try:
        # getDomain
        api_response = await api_instance.domains_get_domain(team_id, domain_name)
        print("The response of DomainsApi->domains_get_domain:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DomainsApi->domains_get_domain: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **team_id** | **float**|  |
 **domain_name** | **str**|  |

### Return type

[**DomainsGetDomain200Response**](DomainsGetDomain200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success. |  -  |
**400** | Path or request body variable does not match schema. |  -  |
**401** | Authorization information is missing or invalid. |  -  |
**404** | Domain not found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **domains_list_domains**
> List[DomainsGetDomain200Response] domains_list_domains(team_id)

listDomains

### Example

* Bearer Authentication (bearerAuth):

```python
import codesphere_sdk
from codesphere_sdk.models.domains_get_domain200_response import DomainsGetDomain200Response
from codesphere_sdk.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://codesphere.com/api
# See configuration.py for a list of all supported configuration parameters.
configuration = codesphere_sdk.Configuration(
    host = "https://codesphere.com/api"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization: bearerAuth
configuration = codesphere_sdk.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
async with codesphere_sdk.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = codesphere_sdk.DomainsApi(api_client)
    team_id = 3.4 # float |

    try:
        # listDomains
        api_response = await api_instance.domains_list_domains(team_id)
        print("The response of DomainsApi->domains_list_domains:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DomainsApi->domains_list_domains: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **team_id** | **float**|  |

### Return type

[**List[DomainsGetDomain200Response]**](DomainsGetDomain200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success. |  -  |
**400** | Path or request body variable does not match schema. |  -  |
**401** | Authorization information is missing or invalid. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **domains_update_domain**
> DomainsGetDomain200Response domains_update_domain(team_id, domain_name, domains_get_domain200_response_custom_config=domains_get_domain200_response_custom_config)

updateDomain

### Example

* Bearer Authentication (bearerAuth):

```python
import codesphere_sdk
from codesphere_sdk.models.domains_get_domain200_response import DomainsGetDomain200Response
from codesphere_sdk.models.domains_get_domain200_response_custom_config import DomainsGetDomain200ResponseCustomConfig
from codesphere_sdk.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://codesphere.com/api
# See configuration.py for a list of all supported configuration parameters.
configuration = codesphere_sdk.Configuration(
    host = "https://codesphere.com/api"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization: bearerAuth
configuration = codesphere_sdk.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
async with codesphere_sdk.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = codesphere_sdk.DomainsApi(api_client)
    team_id = 3.4 # float |
    domain_name = 'foo.example.com' # str |
    domains_get_domain200_response_custom_config = codesphere_sdk.DomainsGetDomain200ResponseCustomConfig() # DomainsGetDomain200ResponseCustomConfig |  (optional)

    try:
        # updateDomain
        api_response = await api_instance.domains_update_domain(team_id, domain_name, domains_get_domain200_response_custom_config=domains_get_domain200_response_custom_config)
        print("The response of DomainsApi->domains_update_domain:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DomainsApi->domains_update_domain: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **team_id** | **float**|  |
 **domain_name** | **str**|  |
 **domains_get_domain200_response_custom_config** | [**DomainsGetDomain200ResponseCustomConfig**](DomainsGetDomain200ResponseCustomConfig.md)|  | [optional]

### Return type

[**DomainsGetDomain200Response**](DomainsGetDomain200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success. |  -  |
**400** | Path or request body variable does not match schema. |  -  |
**401** | Authorization information is missing or invalid. |  -  |
**404** | Domain not found. |  -  |
**409** | Another request is in progress. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **domains_update_workspace_connections**
> DomainsGetDomain200Response domains_update_workspace_connections(team_id, domain_name, request_body=request_body)

updateWorkspaceConnections

### Example

* Bearer Authentication (bearerAuth):

```python
import codesphere_sdk
from codesphere_sdk.models.domains_get_domain200_response import DomainsGetDomain200Response
from codesphere_sdk.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://codesphere.com/api
# See configuration.py for a list of all supported configuration parameters.
configuration = codesphere_sdk.Configuration(
    host = "https://codesphere.com/api"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization: bearerAuth
configuration = codesphere_sdk.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
async with codesphere_sdk.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = codesphere_sdk.DomainsApi(api_client)
    team_id = 3.4 # float |
    domain_name = 'foo.example.com' # str |
    request_body = None # Dict[str, List[int]] |  (optional)

    try:
        # updateWorkspaceConnections
        api_response = await api_instance.domains_update_workspace_connections(team_id, domain_name, request_body=request_body)
        print("The response of DomainsApi->domains_update_workspace_connections:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DomainsApi->domains_update_workspace_connections: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **team_id** | **float**|  |
 **domain_name** | **str**|  |
 **request_body** | [**Dict[str, List[int]]**](List.md)|  | [optional]

### Return type

[**DomainsGetDomain200Response**](DomainsGetDomain200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success. |  -  |
**400** | Path or request body variable does not match schema. |  -  |
**401** | Authorization information is missing or invalid. |  -  |
**404** | Domain not found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **domains_verify_domain**
> DomainsGetDomain200ResponseDomainVerificationStatus domains_verify_domain(team_id, domain_name)

verifyDomain

### Example

* Bearer Authentication (bearerAuth):

```python
import codesphere_sdk
from codesphere_sdk.models.domains_get_domain200_response_domain_verification_status import DomainsGetDomain200ResponseDomainVerificationStatus
from codesphere_sdk.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://codesphere.com/api
# See configuration.py for a list of all supported configuration parameters.
configuration = codesphere_sdk.Configuration(
    host = "https://codesphere.com/api"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization: bearerAuth
configuration = codesphere_sdk.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
async with codesphere_sdk.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = codesphere_sdk.DomainsApi(api_client)
    team_id = 3.4 # float |
    domain_name = 'foo.example.com' # str |

    try:
        # verifyDomain
        api_response = await api_instance.domains_verify_domain(team_id, domain_name)
        print("The response of DomainsApi->domains_verify_domain:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DomainsApi->domains_verify_domain: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **team_id** | **float**|  |
 **domain_name** | **str**|  |

### Return type

[**DomainsGetDomain200ResponseDomainVerificationStatus**](DomainsGetDomain200ResponseDomainVerificationStatus.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success. |  -  |
**400** | Path or request body variable does not match schema. |  -  |
**401** | Authorization information is missing or invalid. |  -  |
**404** | Domain not found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
