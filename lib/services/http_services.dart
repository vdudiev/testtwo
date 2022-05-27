import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:testtwo/models/company_data_model.dart';

class CompaniesDataService {
  Future<List<CompanyDataModel>> companyDataResponse() async {
    final response = await Future.wait([
      http.get(Uri.parse(_url(symbol: "AAPL"))),
      http.get(Uri.parse(_url(symbol: "AMZN"))),
      http.get(Uri.parse(_url(symbol: "GOOG"))),
      http.get(Uri.parse(_url(symbol: "MSFT"))),
      http.get(Uri.parse(_url(symbol: "FB")))
    ]);
    try {
      final List<Map<String, dynamic>> _responsejson = [
        json.decode(response[0].body),
        json.decode(response[1].body),
        json.decode(response[2].body),
        json.decode(response[3].body),
        json.decode(response[4].body)
      ];

      final List<CompanyDataModel> _dataToSend = [
        CompanyDataModel.fromJson(_responsejson[0]),
        CompanyDataModel.fromJson(_responsejson[1]),
        CompanyDataModel.fromJson(_responsejson[2]),
        CompanyDataModel.fromJson(_responsejson[3]),
        CompanyDataModel.fromJson(_responsejson[4]),
      ];

      return _dataToSend;
    } catch (e) {
      throw Exception("error fetching company data");
    }

    // } else {
    //   throw Exception("error fetching company data");
    // }
  }

  String _url({required String symbol}) {
    return "https://www.alphavantage.co/query?function=OVERVIEW&symbol=$symbol&apikey=XGT84JPW7R52CUF7";
  }
}
