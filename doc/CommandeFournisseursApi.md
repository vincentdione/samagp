# openapi.api.CommandeFournisseursApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8082*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteCommandeFournisseur**](CommandeFournisseursApi.md#deletecommandefournisseur) | **DELETE** /api/v1/admin/commandeFournisseurs/delete/{idCommande} | 
[**deleteFournisseurArticle**](CommandeFournisseursApi.md#deletefournisseurarticle) | **DELETE** /api/v1/admin/commandeFournisseurs/deleteArticle/{idCommande}/{idLigneCommande} | 
[**findAllLignesCommandesFournisseurByCommandeFournisseurId**](CommandeFournisseursApi.md#findalllignescommandesfournisseurbycommandefournisseurid) | **GET** /api/v1/admin/commandeFournisseurs/ligneCommande/{idCommande} | 
[**getAllCommandeFournisseurs**](CommandeFournisseursApi.md#getallcommandefournisseurs) | **GET** /api/v1/admin/commandeFournisseurs/all | 
[**getCommandeFournisseurById**](CommandeFournisseursApi.md#getcommandefournisseurbyid) | **GET** /api/v1/admin/commandeFournisseurs/{idCommande} | 
[**saveCommandeFournisseurs**](CommandeFournisseursApi.md#savecommandefournisseurs) | **POST** /api/v1/admin/commandeFournisseurs | 
[**updateArticle**](CommandeFournisseursApi.md#updatearticle) | **PATCH** /api/v1/admin/commandeFournisseurs/updateArticle/{idCommande}/{idLigneCommande}/{idArticle} | 
[**updateEtatCommande**](CommandeFournisseursApi.md#updateetatcommande) | **PATCH** /api/v1/admin/commandeFournisseurs/updateEtat/{idCommande}/{etatCommande} | 
[**updateFournisseur**](CommandeFournisseursApi.md#updatefournisseur) | **PATCH** /api/v1/admin/commandeFournisseurs/updateFournisseur/{idCommande}/{idFournisseur} | 
[**updateQuantiteCommande**](CommandeFournisseursApi.md#updatequantitecommande) | **PATCH** /api/v1/admin/commandeFournisseurs/updateQuantite/{idCommande}/{idLigneCommande}/{quantite} | 


# **deleteCommandeFournisseur**
> deleteCommandeFournisseur(idCommande)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CommandeFournisseursApi();
final idCommande = 789; // int | 

try {
    api_instance.deleteCommandeFournisseur(idCommande);
} catch (e) {
    print('Exception when calling CommandeFournisseursApi->deleteCommandeFournisseur: $e\n');
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

# **deleteFournisseurArticle**
> CommandeFournisseurDto deleteFournisseurArticle(idCommande, idLigneCommande)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CommandeFournisseursApi();
final idCommande = 789; // int | 
final idLigneCommande = 789; // int | 

try {
    final result = api_instance.deleteFournisseurArticle(idCommande, idLigneCommande);
    print(result);
} catch (e) {
    print('Exception when calling CommandeFournisseursApi->deleteFournisseurArticle: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idCommande** | **int**|  | 
 **idLigneCommande** | **int**|  | 

### Return type

[**CommandeFournisseurDto**](CommandeFournisseurDto.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findAllLignesCommandesFournisseurByCommandeFournisseurId**
> List<LigneCommandeFournisseurDto> findAllLignesCommandesFournisseurByCommandeFournisseurId(idCommande)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CommandeFournisseursApi();
final idCommande = 789; // int | 

try {
    final result = api_instance.findAllLignesCommandesFournisseurByCommandeFournisseurId(idCommande);
    print(result);
} catch (e) {
    print('Exception when calling CommandeFournisseursApi->findAllLignesCommandesFournisseurByCommandeFournisseurId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idCommande** | **int**|  | 

### Return type

[**List<LigneCommandeFournisseurDto>**](LigneCommandeFournisseurDto.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllCommandeFournisseurs**
> List<CommandeFournisseurDto> getAllCommandeFournisseurs()



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CommandeFournisseursApi();

try {
    final result = api_instance.getAllCommandeFournisseurs();
    print(result);
} catch (e) {
    print('Exception when calling CommandeFournisseursApi->getAllCommandeFournisseurs: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<CommandeFournisseurDto>**](CommandeFournisseurDto.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCommandeFournisseurById**
> CommandeFournisseurDto getCommandeFournisseurById(idCommande)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CommandeFournisseursApi();
final idCommande = 789; // int | 

try {
    final result = api_instance.getCommandeFournisseurById(idCommande);
    print(result);
} catch (e) {
    print('Exception when calling CommandeFournisseursApi->getCommandeFournisseurById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idCommande** | **int**|  | 

### Return type

[**CommandeFournisseurDto**](CommandeFournisseurDto.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **saveCommandeFournisseurs**
> CommandeFournisseurDto saveCommandeFournisseurs(commandeFournisseurDto)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CommandeFournisseursApi();
final commandeFournisseurDto = CommandeFournisseurDto(); // CommandeFournisseurDto | 

try {
    final result = api_instance.saveCommandeFournisseurs(commandeFournisseurDto);
    print(result);
} catch (e) {
    print('Exception when calling CommandeFournisseursApi->saveCommandeFournisseurs: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **commandeFournisseurDto** | [**CommandeFournisseurDto**](CommandeFournisseurDto.md)|  | 

### Return type

[**CommandeFournisseurDto**](CommandeFournisseurDto.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateArticle**
> CommandeFournisseurDto updateArticle(idCommande, idLigneCommande, idArticle)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CommandeFournisseursApi();
final idCommande = 789; // int | 
final idLigneCommande = 789; // int | 
final idArticle = 789; // int | 

try {
    final result = api_instance.updateArticle(idCommande, idLigneCommande, idArticle);
    print(result);
} catch (e) {
    print('Exception when calling CommandeFournisseursApi->updateArticle: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idCommande** | **int**|  | 
 **idLigneCommande** | **int**|  | 
 **idArticle** | **int**|  | 

### Return type

[**CommandeFournisseurDto**](CommandeFournisseurDto.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateEtatCommande**
> CommandeFournisseurDto updateEtatCommande(idCommande, etatCommande)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CommandeFournisseursApi();
final idCommande = 789; // int | 
final etatCommande = etatCommande_example; // String | 

try {
    final result = api_instance.updateEtatCommande(idCommande, etatCommande);
    print(result);
} catch (e) {
    print('Exception when calling CommandeFournisseursApi->updateEtatCommande: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idCommande** | **int**|  | 
 **etatCommande** | **String**|  | 

### Return type

[**CommandeFournisseurDto**](CommandeFournisseurDto.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateFournisseur**
> CommandeFournisseurDto updateFournisseur(idCommande, idFournisseur)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CommandeFournisseursApi();
final idCommande = 789; // int | 
final idFournisseur = 789; // int | 

try {
    final result = api_instance.updateFournisseur(idCommande, idFournisseur);
    print(result);
} catch (e) {
    print('Exception when calling CommandeFournisseursApi->updateFournisseur: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idCommande** | **int**|  | 
 **idFournisseur** | **int**|  | 

### Return type

[**CommandeFournisseurDto**](CommandeFournisseurDto.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateQuantiteCommande**
> CommandeFournisseurDto updateQuantiteCommande(idCommande, idLigneCommande, quantite)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CommandeFournisseursApi();
final idCommande = 789; // int | 
final idLigneCommande = 789; // int | 
final quantite = 8.14; // num | 

try {
    final result = api_instance.updateQuantiteCommande(idCommande, idLigneCommande, quantite);
    print(result);
} catch (e) {
    print('Exception when calling CommandeFournisseursApi->updateQuantiteCommande: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idCommande** | **int**|  | 
 **idLigneCommande** | **int**|  | 
 **quantite** | **num**|  | 

### Return type

[**CommandeFournisseurDto**](CommandeFournisseurDto.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

