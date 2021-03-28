import 'package:diabetes_assistant/src/data/rest_data_service.dart';

abstract class SelfAssessmentCardContract {
  void onSelfAssessmentSuccess();
  void onSelfAssessmentError(String errorTxt);
}

class SelfAssessmentCardPresenter {
  SelfAssessmentCardContract _view;
  RestDatasource api = new RestDatasource();
  SelfAssessmentCardPresenter(this._view);

  Future<String> doSelfAssessment(fastingSugar, postBreakfast) async {
    var response = await api.selfAssessment(fastingSugar, postBreakfast);
    return response;
  }
}
