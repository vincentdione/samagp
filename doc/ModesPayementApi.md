# openapi.api.ModesPayementApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8082*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteMode**](ModesPayementApi.md#deletemode) | **DELETE** /api/v1/admin/modes/delete/{idMode} | 
[**getAllModes**](ModesPayementApi.md#getallmodes) | **GET** /api/v1/admin/modes/all | 
[**getModeById**](ModesPayementApi.md#getmodebyid) | **GET** /api/v1/admin/modes/{idMode} | 
[**getModeByNom**](ModesPayementApi.md#getmodebynom) | **GET** /api/v1/admin/modes/{nom} | 
[**saveMode**](ModesPayementApi.md#savemode) | **POST** /api/v1/admin/modes | 


# **deleteMode**
> String deleteMode(idMode)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ModesPayementApi();
final idMode = 789; // int | 

try {
    final result = api_instance.deleteMode(idMode);
    print(result);
} catch (e) {
    print('Exception when calling ModesPayementApi->deleteMode: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idMode** | **int**|  | 

### Return type

**String**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllModes**
> List<ModePayementDto> getAllModes()



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ModesPayementApi();

try {
    final result = api_instance.getAllModes();
    print(result);
} catch (e) {
    print('Exception when calling ModesPayementApi->getAllModes: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<ModePayementDto>**](ModePayementDto.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getModeById**
> ModePayementDto getModeById(idMode)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ModesPayementApi();
final idMode = 789; // int | 

try {
    final result = api_instance.getModeById(idMode);
    print(result);
} catch (e) {
    print('Exception when calling ModesPayementApi->getModeById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idMode** | **int**|  | 

### Return type

[**ModePayementDto**](ModePayementDto.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getModeByNom**
> ModePayementDto getModeByNom(nom)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ModesPayementApi();
final nom = nom_example; // String | 

try {
    final result = api_instance.getModeByNom(nom);
    print(result);
} catch (e) {
    print('Exception when calling ModesPayementApi->getModeByNom: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **nom** | **String**|  | 

### Return type

[**ModePayementDto**](ModePayementDto.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **saveMode**
> ModePayementDto saveMode(modePayementDto)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ModesPayementApi();
final modePayementDto = ModePayementDto(); // ModePayementDto | 

try {
    final result = api_instance.saveMode(modePayementDto);
    print(result);
} catch (e) {
    print('Exception when calling ModesPayementApi->saveMode: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **modePayementDto** | [**ModePayementDto**](ModePayementDto.md)|  | 

### Return type

[**ModePayementDto**](ModePayementDto.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

