import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';

import '../../datasets/state_city_model.dart';

class EntryFormViewModel extends BaseViewModel {
  String applicantType = '',
      applicationMode = '',
      gender = '',
      city = '',
      state = '',
      invoiceDate = '',
      errorMsg = '',
      diplomaUniversityLocation = '',
      diplomaMarksheet = '',
      graduateUniversityLocation = '',
      graduateMarksheet = '',
      postGraduateUniversityLocation = '',
      postGraduateMarksheet = '',
      professionalStatus = '',
      fromDate = '',
      toDate = '',
      regOtherRV = '',
      proposedMeetingDate = '';

  TextEditingController membershipNo = TextEditingController(),
      name = TextEditingController(),
      dob = TextEditingController(),
      receivedDate = TextEditingController(),
      fatherName = TextEditingController(),
      address = TextEditingController(),
      pinCode = TextEditingController(),
      mobileNo = TextEditingController(),
      eMail = TextEditingController(),
      invoiceNo = TextEditingController(),
      fees = TextEditingController(),
      pan = TextEditingController(),
      aadharCard = TextEditingController(),
      diplomaDegree = TextEditingController(),
      diplomaPassingYear = TextEditingController(),
      diplomaUniversityName = TextEditingController(),
      diplomaUniversityApproved = TextEditingController(),
      graduateDegree = TextEditingController(),
      graduatePassingYear = TextEditingController(),
      graduateUniversityName = TextEditingController(),
      graduateUniversityApproved = TextEditingController(),
      postGraduatePassingYear = TextEditingController(),
      postGraduateDegree = TextEditingController(),
      postGraduateUniversityName = TextEditingController(),
      postGraduateUniversityApproved = TextEditingController(),
      position = TextEditingController(),
      experienceMonths = TextEditingController(),
      experienceYears = TextEditingController(),
      membershipClass = TextEditingController(),
      assetClass = TextEditingController(),
      annualLM = TextEditingController(),
      acknowledgementNo = TextEditingController(),
      membershipStatus = TextEditingController(),
      approvedbyMem = TextEditingController(),
      remarks = TextEditingController();

  FocusNode membershipNoFocusNode = FocusNode(),
      nameFocusNode = FocusNode(),
      fatherNameFocusNode = FocusNode(),
      addressFocusNode = FocusNode(),
      pinCodeFocusNode = FocusNode(),
      mobileNoFocusNode = FocusNode(),
      eMailFocusNode = FocusNode(),
      invoiceNoFocusNode = FocusNode(),
      feesFocusNode = FocusNode(),
      panFocusNode = FocusNode(),
      aadharCardFocusNode = FocusNode(),
      diplomaDegreeFocusNode = FocusNode(),
      diplomaPassingYearFocusNode = FocusNode(),
      diplomaUniversityNameFocusNode = FocusNode(),
      diplomaUniversityApprovedFocusNode = FocusNode(),
      graduateDegreeFocusNode = FocusNode(),
      graduatePassingYearFocusNode = FocusNode(),
      graduateUniversityNameFocusNode = FocusNode(),
      graduateUniversityApprovedFocusNode = FocusNode(),
      postGraduatePassingYearFocusNode = FocusNode(),
      postGraduateDegreeFocusNode = FocusNode(),
      postGraduateUniversityNameFocusNode = FocusNode(),
      positionFocusNode = FocusNode(),
      postGraduateUniversityApprovedFocusNode = FocusNode(),
      experienceMonthsFocusNode = FocusNode(),
      experienceYearsFocusNode = FocusNode(),
      membershipClassFocusNode = FocusNode(),
      assetClassFocusNode = FocusNode(),
      annualLMFocusNode = FocusNode(),
      acknowledgementNoFocusNode = FocusNode(),
      membershipStatusFocusNode = FocusNode(),
      approvedbyMemFocusNode = FocusNode(),
      remarksFocusNode = FocusNode();

  bool showGender = false,
      showCountry = false,
      showState = false,
      showCity = false,
      showYear = false,
      showApplicationMode = false,
      showApplicantType = false;

  StateCityModel cityModel = StateCityModel();
  List<String> stateList = [];
  List<String> cityList = [];

  init() {
    StateCityModel cityModel = StateCityModel();
    stateList = [];
    stateList.addAll(cityModel.stateList);
  }

  void onTextFieldTap() {
    allFalse();
    notifyListeners();
  }

  void onApplicantTypeChange(String Value) {
    applicantType = Value;
    notifyListeners();
  }

  void onApplicationModeChange(String Value) {
    applicationMode = Value;
    notifyListeners();
  }

  void onGenderChange(String Value) {
    gender = Value;
    notifyListeners();
  }

  void onCityChange(String Value) {
    if (Value != "Select State") {
      city = Value;
      notifyListeners();
    }
  }

  void onStateChange(String Value) {
    cityList = [];
    city = '';
    Value == "CLEAR"
        ? {cityList.add("Select State"), state = ''}
        : {cityList.addAll(cityModel.getCity(Value)), state = Value};
    notifyListeners();
  }

  void onInvoiceDateChange(String Value) {
    invoiceDate = Value;
    notifyListeners();
  }

  void ondiplomaUniversityLocationChange(String Value){
    diplomaUniversityLocation=Value;
    notifyListeners();
  }
  void ondiplomaMarksheetChange(String Value){
    diplomaMarksheet=Value;
    notifyListeners();
  }
  void ongraduateUniversityLocationChange(String Value){
    graduateUniversityLocation=Value;
    notifyListeners();
  }
  void ongraduateMarksheetChange(String Value){
    graduateMarksheet=Value;
    notifyListeners();
  }
  void onpostGraduateUniversityLocationChange(String Value){
    postGraduateUniversityLocation=Value;
    notifyListeners();
  }
  void onpostGraduateMarksheetChange(String Value){
    postGraduateMarksheet=Value;
    notifyListeners();
  }
  void onprofessionalStatusChange(String Value){
    professionalStatus=Value;
    notifyListeners();
  }
  void onfromDateChange(String Value){
    fromDate=Value;
    notifyListeners();
  }
  void ontoDateChange(String Value){
    toDate=Value;
    notifyListeners();
  }
  void onregOtherRVChange(String Value){
    regOtherRV=Value;
    notifyListeners();
  }
  void onproposedMeetingDateChange(String Value){
    proposedMeetingDate=Value;
    notifyListeners();
  }



  void onApplicationTap() {
    allFalse();
    notifyListeners();
  }

  allFalse() {
    showGender = false;
    showCountry = false;
    showState = false;
    showCity = false;
    showYear = false;
    showApplicationMode = false;
    showApplicantType = false;
  }
}
