# openapi.api.UtilisateursApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8082*

Method | HTTP request | Description
------------- | ------------- | -------------
[**findByUsername**](UtilisateursApi.md#findbyusername) | **GET** /api/v1/admin/utilisateurs/getUser/{username} | 
[**getAllUtilisateurs**](UtilisateursApi.md#getallutilisateurs) | **GET** /api/v1/admin/utilisateurs/all | 
[**getUtilisateurById**](UtilisateursApi.md#getutilisateurbyid) | **GET** /api/v1/admin/utilisateurs/{idUtilisateur} | 
[**saveUser**](UtilisateursApi.md#saveuser) | **POST** /api/v1/admin/utilisateurs | 


# **findByUsername**
> UtilisateurDto findByUsername(username)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UtilisateursApi();
final username = username_example; // String | 

try {
    final result = api_instance.findByUsername(username);
    print(result);
} catch (e) {
    print('Exception when calling UtilisateursApi->findByUsername: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**|  | 

### Return type

[**UtilisateurDto**](UtilisateurDto.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllUtilisateurs**
> List<UtilisateurDto> getAllUtilisateurs()



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UtilisateursApi();

try {
    final result = api_instance.getAllUtilisateurs();
    print(result);
} catch (e) {
    print('Exception when calling UtilisateursApi->getAllUtilisateurs: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<UtilisateurDto>**](UtilisateurDto.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUtilisateurById**
> UtilisateurDto getUtilisateurById(idUtilisateur)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UtilisateursApi();
final idUtilisateur = 789; // int | 

try {
    final result = api_instance.getUtilisateurById(idUtilisateur);
    print(result);
} catch (e) {
    print('Exception when calling UtilisateursApi->getUtilisateurById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idUtilisateur** | **int**|  | 

### Return type

[**UtilisateurDto**](UtilisateurDto.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **saveUser**
> UtilisateurDto saveUser(utilisateurDto)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UtilisateursApi();
final utilisateurDto = UtilisateurDto(); // UtilisateurDto | 

try {
    final result = api_instance.saveUser(utilisateurDto);
    print(result);
} catch (e) {
    print('Exception when calling UtilisateursApi->saveUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **utilisateurDto** | [**UtilisateurDto**](UtilisateurDto.md)|  | 

### Return type

[**UtilisateurDto**](UtilisateurDto.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

