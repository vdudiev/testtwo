//events

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testtwo/models/company_data_model.dart';
import 'package:testtwo/services/http_services.dart';

abstract class CompaniesEvent {}

class CompaniesLoadEvent extends CompaniesEvent {}

//states

abstract class CompaniesState {}

class CompaniesInitState extends CompaniesState {}

class CompaniesLoadingState extends CompaniesState {}

class CompaniesErrorState extends CompaniesState {}

class CompaniesLoadedState extends CompaniesState {
  final List<CompanyDataModel> companiesList;

  CompaniesLoadedState({required this.companiesList});
}

//bloc class

class CompaniesDataBloc extends Bloc<CompaniesEvent, CompaniesState> {
  CompaniesDataBloc() : super(CompaniesInitState()) {
    on<CompaniesLoadEvent>((event, state) async {
      state(CompaniesLoadingState());
      try {
        final List<CompanyDataModel> _companyDataModelList =
            await CompaniesDataService().companyDataResponse();

        state(CompaniesLoadedState(companiesList: _companyDataModelList));
      } catch (e) {
        state(CompaniesErrorState());
      }
    });
  }
}
