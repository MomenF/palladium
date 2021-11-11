import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

Map<String, Object> logInMap = {
  "status": true,
  "user": {
    "id": 6,
    "name": "maged",
    "email": "ma@msa.com",
    "email_verified_at": null,
    "phone": "1555",
    "country_id": 1,
    "account_type": "company",
    "company_name": null,
    "image": "",
    "palladium": null,
    "platinum": null,
    "rhodium": null,
    "rate": null,
    "discount": null,
    "total_price": 0,
    "calculator": 0,
    "adding_accounts": 0,
    "currency": null,
    "views": null,
    "created_at": "2021-11-08T18:27:29.000000Z",
    "updated_at": "2021-11-08T18:27:29.000000Z",
    "token":
        "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiZDM5YjRkYmYzNDZlM2I5OTY4MTAxNzUwMWQ1MDc2ODNjZWNjMzA5ZTUyNTcyMTM1MDEzZTllYjdjYTRhMGMzNmU2ZTlmYzQxNjA2YmYxOTkiLCJpYXQiOjE2MzY0Nzg3MjkuNDQwODY3OTAwODQ4Mzg4NjcxODc1LCJuYmYiOjE2MzY0Nzg3MjkuNDQwODcyOTA3NjM4NTQ5ODA0Njg3NSwiZXhwIjoxNjY4MDE0NzI5LjQzNDgzNzEwMjg5MDAxNDY0ODQzNzUsInN1YiI6IjYiLCJzY29wZXMiOlsiYXBpIl19.YihkkxfuAFwDGXgDxRIZHlGNTvNPvEa6pz3ZrRYGjuFX6ZF1Q7NLpy-TnjeeIK8oIsgpp96zrVafTrNOA32QVyIpJrnis7gGdHPGWBpzUf7-sWqwScFqZTAmTRWsfoYULKeRBYyH7wMnRR1mwuvC5i_cSneszvn733xzwh7Xcue4WVB0uCITFPs2ePBnbs0jOSCI1RboA2yv1WyTFv12jZchMLN04Xk3nQYOS0W0nXFEB7wYRmX0BhQkNfQ9Da5iR3z9KgWbbHCv6vSadnbtlCE6qC_ssvNtzygJILS1zt04Ti6MGaF5sTFYxOaeJEarb4RyNPazJfSappGelpqEA60HMlPFaNRcqpECDNHmV6SmSF88TDqI4wgwNq6Q7bZcJyixIG3xryBXGWGQXGlJw2SXvnigu3WbZvC2xvm8E_FlyRXxaGdwFUtoQMSjVW0wiJo_apt7B6SwUvaa07JF-03E0nMLxSKhHnIC4AjMIbBHkg5xL123i6vokEFJdrMKX6s0K1rEOqg9MjK-6MZNriowZGCmauiWqpSLODcE93mUe7vNl8Pn9uTJi13_iixCsn6Fcg9Lt-utbZb0s8DP9qE6UNDpTbkNnx8R6iWwn_v2AJ_HkYqp5aDCY_0H9WliGdtsXQiQLIaM0aWMAqYbErjvjQMnDzixFHBTmzQ19Eo"
  },
};

class UserAuthentication with ChangeNotifier {
  /// Register New Account
  bool? status;
  String? message;

  registerNewAccount(String name, String email, String password, String phone,
      String countryId, String accountType, String companyName) async {
    try {
      var request = http.MultipartRequest(
          'POST', Uri.parse('https://packages.3codeit.com/api/register'));
      request.fields.addAll({
        'name': name,
        'email': email,
        'password': password,
        'phone': phone,
        'country_id': countryId,
        'account_type': accountType,
        'company_name': companyName,
      });

      http.StreamedResponse response = await request.send();
      if (response.statusCode == 200) {
        registerNewAccountFromJson(
            await jsonDecode(await response.stream.bytesToString()));
        notifyListeners();
      } else {
        print(response.reasonPhrase);
      }
    } catch (_error) {
      rethrow;
    }
  }

  registerNewAccountFromJson(Map<String, dynamic> json) async {
    status = json['status'];
    message = json['message'];
  }

  ///End Register New Account
  ///------------------------------------------------------------------------
  ///Update User Profile
  upDateUserProfile(String name, String email, String phone, String countryId,
      String accountType, String companyName) async {
    try {
      var request = http.MultipartRequest(
          'POST', Uri.parse('https://packages.3codeit.com/api/updateProfile'));
      request.fields.addAll({
        'name': name,
        'email': email,
        'phone': phone,
        'country_id': countryId,
        'account_type': accountType,
        'company_name': companyName,
      });
      http.StreamedResponse response = await request.send();
      if (response.statusCode == 200) {
        print(await response.stream.bytesToString());
      } else {
        print(response.reasonPhrase);
      }
    } catch (_error) {
      rethrow;
    }
  }

  ///End UpDate User Profile
  ///------------------------------------------------------------------------

}
