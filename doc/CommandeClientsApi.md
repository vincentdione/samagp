# openapi.api.CommandeClientsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8082*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteArticle**](CommandeClientsApi.md#deletearticle) | **DELETE** /api/v1/admin/commandeClients/deleteArticle/{idCommande}/{idLigneCommande} | 
[**deleteCommandeClient**](CommandeClientsApi.md#deletecommandeclient) | **DELETE** /api/v1/admin/commandeClients/delete/{idCommande} | 
[**findAllLignesCommandesClientByCommandeClientId**](CommandeClientsApi.md#findalllignescommandesclientbycommandeclientid) | **GET** /api/v1/admin/commandeClients/ligneCommande/{idCommande} | 
[**getAllCommandeClients**](CommandeClientsApi.md#getallcommandeclients) | **GET** /api/v1/admin/commandeClients/all | 
[**getCommandeClientById**](CommandeClientsApi.md#getcommandeclientbyid) | **GET** /api/v1/admin/commandeClients/{idCommande} | 
[**saveCommandeClients**](CommandeClientsApi.md#savecommandeclients) | **POST** /api/v1/admin/commandeClients | 
[**updateArticle1**](CommandeClientsApi.md#updatearticle1) | **PATCH** /api/v1/admin/commandeClients/updateArticle/{idCommande}/{idLigneCommande}/{idArticle} | 
[**updateClient**](CommandeClientsApi.md#updateclient) | **PATCH** /api/v1/admin/commandeClients/updateClient/{idCommande}/{idClient} | 
[**updateEtatCommande1**](CommandeClientsApi.md#updateetatcommande1) | **PATCH** /api/v1/admin/commandeClients/updateEtat/{idCommande}/{etatCommande} | 
[**updateQuantiteCommande1**](CommandeClientsApi.md#updatequantitecommande1) | **PATCH** /api/v1/admin/commandeClients/updateQuantite/{idCommande}/{idLigneCommande}/{quantite} | 


# **deleteArticle**
> CommandeClientDto deleteArticle(idCommande, idLigneCommande)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CommandeClientsApi();
final idCommande = 789; // int | 
final idLigneCommande = 789; // int | 

try {
    final result = api_instance.deleteArticle(idCommande, idLigneCommande);
    print(result);
} catch (e) {
    print('Exception when calling CommandeClientsApi->deleteArticle: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idCommande** | **int**|  | 
 **idLigneCommande** | **int**|  | 

### Return type

[**CommandeClientDto**](CommandeClientDto.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteCommandeClient**
> deleteCommandeClient(idCommande)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CommandeClientsApi();
final idCommande = 789; // int | 

try {
    api_instance.deleteCommandeClient(idCommande);
} catch (e) {
    print('Exception when calling CommandeClientsApi->deleteCommandeClient: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idCommande** | **int**|  | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findAllLignesCommandesClientByCommandeClientId**
> List<LigneCommandeClientDto> findAllLignesCommandesClientByCommandeClientId(idCommande)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CommandeClientsApi();
final idCommande = 789; // int | 

try {
    final result = api_instance.findAllLignesCommandesClientByCommandeClientId(idCommande);
    print(result);
} catch (e) {
    print('Exception when calling CommandeClientsApi->findAllLignesCommandesClientByCommandeClientId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idCommande** | **int**|  | 

### Return type

[**List<LigneCommandeClientDto>**](LigneCommandeClientDto.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllCommandeClients**
> List<CommandeClientDto> getAllCommandeClients()



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CommandeClientsApi();

try {
    final result = api_instance.getAllCommandeClients();
    print(result);
} catch (e) {
    print('Exception when calling CommandeClientsApi->getAllCommandeClients: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<CommandeClientDto>**](CommandeClientDto.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCommandeClientById**
> CommandeClientDto getCommandeClientById(idCommande)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CommandeClientsApi();
final idCommande = 789; // int | 

try {
    final result = api_instance.getCommandeClientById(idCommande);
    print(result);
} catch (e) {
    print('Exception when calling CommandeClientsApi->getCommandeClientById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idCommande** | **int**|  | 

### Return type

[**CommandeClientDto**](CommandeClientDto.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **saveCommandeClients**
> CommandeClientDto saveCommandeClients(commandeClientDto)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CommandeClientsApi();
final commandeClientDto = CommandeClientDto(); // CommandeClientDto | 

try {
    final result = api_instance.saveCommandeClients(commandeClientDto);
    print(result);
} catch (e) {
    print('Exception when calling CommandeClientsApi->saveCommandeClients: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **commandeClientDto** | [**CommandeClientDto**](CommandeClientDto.md)|  | 

### Return type

[**CommandeClientDto**](CommandeClientDto.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateArticle1**
> CommandeClientDto updateArticle1(idCommande, idLigneCommande, idArticle)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CommandeClientsApi();
final idCommande = 789; // int | 
final idLigneCommande = 789; // int | 
final idArticle = 789; // int | 

try {
    final result = api_instance.updateArticle1(idCommande, idLigneCommande, idArticle);
    print(result);
} catch (e) {
    print('Exception when calling CommandeClientsApi->updateArticle1: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idCommande** | **int**|  | 
 **idLigneCommande** | **int**|  | 
 **idArticle** | **int**|  | 

### Return type

[**CommandeClientDto**](CommandeClientDto.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateClient**
> CommandeClientDto updateClient(idCommande, idClient)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CommandeClientsApi();
final idCommande = 789; // int | 
final idClient = 789; // int | 

try {
    final result = api_instance.updateClient(idCommande, idClient);
    print(result);
} catch (e) {
    print('Exception when calling CommandeClientsApi->updateClient: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idCommande** | **int**|  | 
 **idClient** | **int**|  | 

### Return type

[**CommandeClientDto**](CommandeClientDto.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateEtatCommande1**
> CommandeClientDto updateEtatCommande1(idCommande, etatCommande)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CommandeClientsApi();
final idCommande = 789; // int | 
final etatCommande = etatCommande_example; // String | 

try {
    final result = api_instance.updateEtatCommande1(idCommande, etatCommande);
    print(result);
} catch (e) {
    print('Exception when calling CommandeClientsApi->updateEtatCommande1: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idCommande** | **int**|  | 
 **etatCommande** | **String**|  | 

### Return type

[**CommandeClientDto**](CommandeClientDto.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateQuantiteCommande1**
> CommandeClientDto updateQuantiteCommande1(idCommande, idLigneCommande, quantite)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CommandeClientsApi();
final idCommande = 789; // int | 
final idLigneCommande = 789; // int | 
final quantite = 8.14; // num | 

try {
    final result = api_instance.updateQuantiteCommande1(idCommande, idLigneCommande, quantite);
    print(result);
} catch (e) {
    print('Exception when calling CommandeClientsApi->updateQuantiteCommande1: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idCommande** | **int**|  | 
 **idLigneCommande** | **int**|  | 
 **quantite** | **num**|  | 

### Return type

[**CommandeClientDto**](CommandeClientDto.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

