# openapi.api.FournisseursApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8082*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteFournisseur**](FournisseursApi.md#deletefournisseur) | **DELETE** /api/v1/admin/fournisseurs/delete/{idFournisseur} | 
[**getAllFournisseurs**](FournisseursApi.md#getallfournisseurs) | **GET** /api/v1/admin/fournisseurs/all | 
[**getFournisseurById**](FournisseursApi.md#getfournisseurbyid) | **GET** /api/v1/admin/fournisseurs/{idFournisseur} | 
[**saveFournisseur**](FournisseursApi.md#savefournisseur) | **POST** /api/v1/admin/fournisseurs | 


# **deleteFournisseur**
> String deleteFournisseur(idFournisseur)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = FournisseursApi();
final idFournisseur = 789; // int | 

try {
    final result = api_instance.deleteFournisseur(idFournisseur);
    print(result);
} catch (e) {
    print('Exception when calling FournisseursApi->deleteFournisseur: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idFournisseur** | **int**|  | 

### Return type

**String**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllFournisseurs**
> List<FournisseurDto> getAllFournisseurs()



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = FournisseursApi();

try {
    final result = api_instance.getAllFournisseurs();
    print(result);
} catch (e) {
    print('Exception when calling FournisseursApi->getAllFournisseurs: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<FournisseurDto>**](FournisseurDto.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFournisseurById**
> FournisseurDto getFournisseurById(idFournisseur)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = FournisseursApi();
final idFournisseur = 789; // int | 

try {
    final result = api_instance.getFournisseurById(idFournisseur);
    print(result);
} catch (e) {
    print('Exception when calling FournisseursApi->getFournisseurById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idFournisseur** | **int**|  | 

### Return type

[**FournisseurDto**](FournisseurDto.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **saveFournisseur**
> FournisseurDto saveFournisseur(fournisseurDto)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = FournisseursApi();
final fournisseurDto = FournisseurDto(); // FournisseurDto | 

try {
    final result = api_instance.saveFournisseur(fournisseurDto);
    print(result);
} catch (e) {
    print('Exception when calling FournisseursApi->saveFournisseur: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fournisseurDto** | [**FournisseurDto**](FournisseurDto.md)|  | 

### Return type

[**FournisseurDto**](FournisseurDto.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

