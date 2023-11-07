# openapi.api.EntreprisesApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8082*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteEntreprise**](EntreprisesApi.md#deleteentreprise) | **DELETE** /api/v1/admin/entreprises/delete/{idEntreprise} | 
[**getAllEntreprises**](EntreprisesApi.md#getallentreprises) | **GET** /api/v1/admin/entreprises/all | 
[**getEntrepriseById**](EntreprisesApi.md#getentreprisebyid) | **GET** /api/v1/admin/entreprises/{idEntreprise} | 
[**saveEntreprise**](EntreprisesApi.md#saveentreprise) | **POST** /api/v1/admin/entreprises | 


# **deleteEntreprise**
> String deleteEntreprise(idEntreprise)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = EntreprisesApi();
final idEntreprise = 789; // int | 

try {
    final result = api_instance.deleteEntreprise(idEntreprise);
    print(result);
} catch (e) {
    print('Exception when calling EntreprisesApi->deleteEntreprise: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idEntreprise** | **int**|  | 

### Return type

**String**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllEntreprises**
> List<EntrepriseDto> getAllEntreprises()



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = EntreprisesApi();

try {
    final result = api_instance.getAllEntreprises();
    print(result);
} catch (e) {
    print('Exception when calling EntreprisesApi->getAllEntreprises: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<EntrepriseDto>**](EntrepriseDto.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEntrepriseById**
> EntrepriseDto getEntrepriseById(idEntreprise)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = EntreprisesApi();
final idEntreprise = 789; // int | 

try {
    final result = api_instance.getEntrepriseById(idEntreprise);
    print(result);
} catch (e) {
    print('Exception when calling EntreprisesApi->getEntrepriseById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idEntreprise** | **int**|  | 

### Return type

[**EntrepriseDto**](EntrepriseDto.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **saveEntreprise**
> EntrepriseDto saveEntreprise(entrepriseDto)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = EntreprisesApi();
final entrepriseDto = EntrepriseDto(); // EntrepriseDto | 

try {
    final result = api_instance.saveEntreprise(entrepriseDto);
    print(result);
} catch (e) {
    print('Exception when calling EntreprisesApi->saveEntreprise: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entrepriseDto** | [**EntrepriseDto**](EntrepriseDto.md)|  | 

### Return type

[**EntrepriseDto**](EntrepriseDto.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

