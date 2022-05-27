import 'package:flutter/material.dart';
import 'package:testtwo/models/company_data_model.dart';

class CompanyDetailswidget extends StatelessWidget {
  final CompanyDataModel companyDataModel;
  const CompanyDetailswidget({Key? key, required this.companyDataModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(companyDataModel.name),
      ),
      body: Container(
        alignment: Alignment.topRight,
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(blurRadius: 5, spreadRadius: 10, color: Colors.grey)
        ]),
        child: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Description: \n" + companyDataModel.description,
            ),
            const SizedBox(height: 20),
            Text(
              "Address: \n" + companyDataModel.address,
            ),
            const SizedBox(height: 20),
            Text(
              "Country: \n" + companyDataModel.country,
            ),
          ],
        )),
      ),
    );
  }
}
