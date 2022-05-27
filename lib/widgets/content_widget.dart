import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:testtwo/bloc/companies_data_bloc.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:testtwo/models/company_data_model.dart';
import 'package:testtwo/widgets/company_details_widget.dart';

class ContentWidget extends StatefulWidget {
  const ContentWidget({Key? key}) : super(key: key);

  @override
  State<ContentWidget> createState() => _ContentWidgetState();
}

class _ContentWidgetState extends State<ContentWidget> {
  // final List<charts.Series<CompanyDataModel, String>> _seriesPieData = [];

  @override
  Widget build(BuildContext context) {
    CompaniesDataBloc _companiesDataBloc = BlocProvider.of(context);
    return BlocBuilder<CompaniesDataBloc, CompaniesState>(
      builder: (context, state) {
        if (state is CompaniesLoadingState) {
          return const Center(child: CircularProgressIndicator());
        }
        if (state is CompaniesErrorState) {
          return const Center(
            child: Text(
              "error",
              style: TextStyle(fontSize: 20),
            ),
          );
        }
        if (state is CompaniesInitState) {
          return Center(
              child: ElevatedButton(
            onPressed: () {
              _companiesDataBloc.add(CompaniesLoadEvent());
            },
            child: const Text("Load chart"),
          ));
        }
        if (state is CompaniesLoadedState) {
          return SfCircularChart(
            series: [
              PieSeries<CompanyDataModel, String>(
                  dataSource: state.companiesList,
                  xValueMapper: (CompanyDataModel model, _) => model.name,
                  yValueMapper: (CompanyDataModel model, _) =>
                      double.parse(model.marketCapitalization),
                  onPointTap: (details) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CompanyDetailswidget(
                              companyDataModel:
                                  state.companiesList[details.pointIndex ?? 0]),
                        ));
                  })
            ],
          );
          //---------------------------------------------------------------
          // _seriesPieData.add(charts.Series(
          //   data: state.companiesList,
          //   domainFn: (CompanyDataModel companyModel, _) => companyModel.name,
          //   id: "Companies",
          //   labelAccessorFn: (CompanyDataModel companyModel, _) =>
          //       companyModel.name,
          //   measureFn: (CompanyDataModel companyModel, _) =>
          //       double.parse(companyModel.marketCapitalization),
          // ));

          // return charts.PieChart(
          //   _seriesPieData,
          //   animate: true,
          //   animationDuration: const Duration(seconds: 1),
          //   // selectionModels: [
          //   //   charts.SelectionModelConfig(
          //   //     changedListener: (model) => Navigator.push(
          //   //         context,
          //   //         MaterialPageRoute(
          //   //             builder: (context) => CompanyDetailswidget(
          //   //                   companyDataModel: state.companiesList[
          //   //                       model.selectedDatum[0].index ?? 0],
          //   //                 ))),
          //   //   )
          //   // ],
          // );
        }
        return const SizedBox();
      },
    );
  }
}
