import 'package:flutter/cupertino.dart';
import 'package:iovuserform/connections/sheet_api.dart';
import 'package:iovuserform/utils/appres.dart';
import 'package:iovuserform/utils/snack_bar_widget.dart';
import 'package:stacked/stacked.dart';

import '../../datasets/form_data_set.dart';
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
      diplomaUniversityApproved = '',
      diplomaMarksheet = '',
      graduateUniversityLocation = '',
      graduateUniversityApproved = '',
      graduateMarksheet = '',
      postGraduateUniversityLocation = '',
      postGraduateUniversityApproved = '',
      postGraduateMarksheet = '',
      professionalStatus = '',
      regOtherRV = '',
      ackEmailSent = '',
      membershipStatus = '',
      proposedMeetingDate = '',
      financialYear = '',
      memberPlan='',
      assetClass='',
      membershipClass='';

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
      graduateDegree = TextEditingController(),
      graduatePassingYear = TextEditingController(),
      graduateUniversityName = TextEditingController(),
      postGraduatePassingYear = TextEditingController(),
      postGraduateDegree = TextEditingController(),
      postGraduateUniversityName = TextEditingController(),
      designation = TextEditingController(),
      fromDate = TextEditingController(),
      toDate = TextEditingController(),
      experienceMonths = TextEditingController(),
      experienceYears = TextEditingController(),
      acknowledgementNo = TextEditingController(),
      approvedbyMem = TextEditingController(),
      remarks = TextEditingController();

  FocusNode applicantTypeFocusNode = FocusNode(),
      membershipNoFocusNode = FocusNode(),
      applicationFocusNode = FocusNode(),
      nameFocusNode = FocusNode(),
      fatherNameFocusNode = FocusNode(),
      genderFocusNode = FocusNode(),
      addressFocusNode = FocusNode(),
      stateFocusNode = FocusNode(),
      cityFocusNode = FocusNode(),
      pinCodeFocusNode = FocusNode(),
      mobileNoFocusNode = FocusNode(),
      eMailFocusNode = FocusNode(),
      invoiceNoFocusNode = FocusNode(),
      feesFocusNode = FocusNode(),
      panFocusNode = FocusNode(),
      aadharCardFocusNode = FocusNode(),
      diplomaDegreeFocusNode = FocusNode(),
      diplomaMarksheetFocusNode = FocusNode(),
      diplomaPassingYearFocusNode = FocusNode(),
      diplomaUniversityNameFocusNode = FocusNode(),
      diplomaUniversityLocationFocusNode = FocusNode(),
      diplomaUniversityApprovedFocusNode = FocusNode(),
      graduateDegreeFocusNode = FocusNode(),
      graduatePassingYearFocusNode = FocusNode(),
      graduateUniversityNameFocusNode = FocusNode(),
      graduateUniversityLocationFocusNode = FocusNode(),
      graduateUniversityApprovedFocusNode = FocusNode(),
      postGraduatePassingYearFocusNode = FocusNode(),
      postGraduateDegreeFocusNode = FocusNode(),
      postGraduateMarksheetFocusNode = FocusNode(),
      graduateMarksheetFocusNode = FocusNode(),
      postGraduateUniversityNameFocusNode = FocusNode(),
      postGraduateUniversityLocationFocusNode = FocusNode(),
      professionalFocusNode = FocusNode(),
      designationFocusNode = FocusNode(),
      postGraduateUniversityApprovedFocusNode = FocusNode(),
      experienceMonthsFocusNode = FocusNode(),
      experienceYearsFocusNode = FocusNode(),
      membershipClassFocusNode = FocusNode(),
      memberPlanFocusNode = FocusNode(),
      annualLMFocusNode = FocusNode(),
      regOtherRVFocusNode = FocusNode(),
      acknowledgementNoFocusNode = FocusNode(),
      ackEmailSentFocusNode = FocusNode(),
      membershipStatusFocusNode = FocusNode(),
      approvedbyMemFocusNode = FocusNode(),
      remarksFocusNode = FocusNode();

  StateCityModel cityModel = StateCityModel();
  List<String> stateList = [];
  List<String> cityList = [];

  RegExp panExp = RegExp(AppRes.panValidation, caseSensitive: false);
  RegExp emailExp = RegExp(AppRes.emailValidation, caseSensitive: false);

  init() {
    StateCityModel cityModel = StateCityModel();
    stateList = [];
    stateList.addAll(cityModel.stateList);
  }

  void onTextFieldTap() {
    notifyListeners();
  }

  void onApplicantTypeChange(String value) {
    applicantType = value;
    notifyListeners();
  }

  void onApplicationModeChange(String value) {
    applicationMode = value;
    notifyListeners();
  }

  void onGenderChange(String value) {
    gender = value;
    notifyListeners();
  }

  void onCityChange(String value) {
    if (value != "Select State") {
      city = value;
      notifyListeners();
    }
  }

  void onStateChange(String value) {
    cityList = [];
    city = '';
    value == "CLEAR"
        ? {cityList.add("Select State"), state = ''}
        : {cityList.addAll(cityModel.getCity(value)), state = value};
    notifyListeners();
  }

  void onReceiveDateChange(String value) {
    receivedDate.text = value;
    notifyListeners();
  }

  void onInvoiceDateChange(String value) {
    invoiceDate = value;
    notifyListeners();
  }

  void ondiplomaUniversityLocationChange(String value) {
    diplomaUniversityLocation = value;
    notifyListeners();
  }
  void ondiplomaUniversityApprovedChange(String value) {
    diplomaUniversityApproved = value;
    notifyListeners();
  }

  void ondiplomaMarksheetChange(String value) {
    diplomaMarksheet = value;
    notifyListeners();
  }

  void ongraduateUniversityLocationChange(String value) {
    graduateUniversityLocation = value;
    notifyListeners();
  }
  void ongraduateUniversityApprovedChange(String value) {
    graduateUniversityApproved = value;
    notifyListeners();
  }

  void ongraduateMarksheetChange(String value) {
    graduateMarksheet = value;
    notifyListeners();
  }

  void onpostGraduateUniversityLocationChange(String value) {
    postGraduateUniversityLocation = value;
    notifyListeners();
  }
  void onpostGraduateUniversityApprovedChange(String value) {
    postGraduateUniversityApproved = value;
    notifyListeners();
  }

  void onpostGraduateMarksheetChange(String value) {
    postGraduateMarksheet = value;
    notifyListeners();
  }

  void onprofessionalStatusChange(String value) {
    professionalStatus = value;
    notifyListeners();
  }

  void onfromDateChange(String value) {
    fromDate.text = value;
    notifyListeners();
  }

  void ontoDateChange(String value) {
    toDate.text = value;
    notifyListeners();
  }

  void onregOtherRVChange(String value) {
    regOtherRV = value;
    notifyListeners();
  }

  void onEmailChange(String value) {
    ackEmailSent = value;
    notifyListeners();
  }

  void onMemberShipChange(String value) {
    membershipStatus = value;
    notifyListeners();
  }

  void onDOBChange(String value) {
    dob.text = value;
    notifyListeners();
  }

  void onDiplomaPassingYearChange(String value) {
    diplomaPassingYear.text = value;
    notifyListeners();
  }

  void onGraduatePassingYearChange(String value) {
    graduatePassingYear.text = value;
    notifyListeners();
  }

  void onPostGraduatePassingYearChange(String value) {
    postGraduatePassingYear.text = value;
    notifyListeners();
  }

  void onproposedMeetingDateChange(String value) {
    proposedMeetingDate = value;
    notifyListeners();
  }

  void onFinancialYearChange(String value) {
    financialYear = value;
    notifyListeners();
  }
  void onmemberPlanChange(String value) {
    memberPlan = value;
    notifyListeners();
  } void onClassAssetChange(String value) {
    assetClass = value;
    notifyListeners();
  } void onClassMemberChange(String value) {
    membershipClass = value;
    notifyListeners();
  }

  void onFormSubmit() async {
    if (valid()) {
      final formdata = {
        FormDataSet.applicationType: applicantType,
        FormDataSet.membershipNo: membershipNo.text,
        FormDataSet.applicationReceivedDate: receivedDate.text,
        FormDataSet.modeOfApplication: applicationMode,
        FormDataSet.name: name.text,
        FormDataSet.father: fatherName.text,
        FormDataSet.gender: gender,
        FormDataSet.address: address.text,
        FormDataSet.city: city,
        FormDataSet.state: state,
        FormDataSet.pincode: pinCode.text,
        FormDataSet.mobile: mobileNo.text,
        FormDataSet.email: eMail.text,
        FormDataSet.invoiceNo: invoiceNo.text,
        FormDataSet.invoiceDate: invoiceDate,
        FormDataSet.fees: fees.text,
        FormDataSet.dob: dob.text,
        FormDataSet.aadhaar: aadharCard.text,
        FormDataSet.pan: pan.text,
        FormDataSet.diplomaDegree: diplomaDegree.text,
        FormDataSet.diplomaMarksheet: diplomaMarksheet,
        FormDataSet.diplomaUniversityName: diplomaUniversityName.text,
        FormDataSet.diplomaUniversityLocation: diplomaUniversityLocation,
        FormDataSet.diplomaUniversityApproved: diplomaUniversityApproved,
        FormDataSet.diplomaYear: diplomaPassingYear.text,
        FormDataSet.graduationDegree: graduateDegree.text,
        FormDataSet.graduationMarksheet: graduateMarksheet,
        FormDataSet.graduationUniversityName: graduateUniversityName.text,
        FormDataSet.graduationUniversityLocation: graduateUniversityLocation,
        FormDataSet.graduationUniversityApproved:
            graduateUniversityApproved,
        FormDataSet.graduationYear: graduatePassingYear.text,
        FormDataSet.PostGraduationDegree: postGraduateDegree.text,
        FormDataSet.PostGraduationMarksheet: postGraduateMarksheet,
        FormDataSet.PostGraduationUniversityName:
            postGraduateUniversityName.text,
        FormDataSet.PostGraduationUniversityLocation:
            postGraduateUniversityLocation,
        FormDataSet.PostGraduationUniversityApproved:
            postGraduateUniversityApproved,
        FormDataSet.PostGraduationYear: postGraduatePassingYear.text,
        FormDataSet.universityNameHint:
            '${diplomaUniversityName.text}  ${graduateUniversityName.text}  ${postGraduateUniversityName.text}',
        FormDataSet.universityLocationHint:
            '$diplomaUniversityLocation  $graduateUniversityLocation  $postGraduateUniversityLocation',
        FormDataSet.universityApprovedHint:
            '$diplomaUniversityApproved  $graduateUniversityApproved  $postGraduateUniversityApproved',
        FormDataSet.passingYearHint:
            '${diplomaPassingYear.text}  ${graduatePassingYear.text}  ${postGraduatePassingYear.text}',
        FormDataSet.haveMarkSheetHint:
            '$diplomaMarksheet  $graduateMarksheet  $postGraduateMarksheet',
        FormDataSet.employementStatus: professionalStatus,
        FormDataSet.designation: designation.text,
        FormDataSet.periodFrom: fromDate.text,
        FormDataSet.periodTo: toDate.text,
        FormDataSet.experienceInYears: experienceYears.text,
        FormDataSet.experienceInMonths: experienceMonths.text,
        FormDataSet.memberShipStatus: membershipStatus,
        FormDataSet.membershipClass: membershipClass,
        FormDataSet.assetClass: assetClass,
        FormDataSet.annualLM: memberPlan,
        FormDataSet.otherRV: regOtherRV,
        FormDataSet.ackNo: acknowledgementNo.text,
        FormDataSet.membershipStatus: membershipStatus,
        FormDataSet.meetingDate: proposedMeetingDate,
        FormDataSet.approvedBy: approvedbyMem.text,
        FormDataSet.remarks: remarks.text,
        FormDataSet.financialYear: financialYear
      };
      await SheetApi.insertData([formdata]).then(
          (value) => {
            if(value){
              clear(), SnackBarWidget.snackBar(message: 'Inserted'),
          notifyListeners()
            }else{
              SnackBarWidget.snackBar(message: 'Something Goes wrong!'),
            }
          });
    } else {
      SnackBarWidget.snackBar(message: errorMsg.replaceAll("Enter ", ""));
    }
    notifyListeners();
  }

  void onApplicationTap() {
    notifyListeners();
  }

  bool valid() {
    if (applicantType == '') {
      applicantTypeFocusNode.requestFocus();
      errorMsg = 'invalid ${AppRes.applicationTypeHint}';
      return false;
    } else if (membershipNo.text == '') {
      membershipNoFocusNode.requestFocus();
      errorMsg = 'invalid ${AppRes.memberShipHint}';
      return false;
    }
    if (receivedDate.text == '') {
      errorMsg = 'invalid ${AppRes.receivedDateHint}';
      return false;
    } else if (applicationMode == '') {
      applicationFocusNode.requestFocus();
      errorMsg = 'invalid ${AppRes.modeHint}';
      return false;
    }
    if (name.text == '') {
      nameFocusNode.requestFocus();
      errorMsg = 'invalid ${AppRes.nameHint}';
      return false;
    } else if (fatherName.text == '') {
      fatherNameFocusNode.requestFocus();
      errorMsg = 'invalid ${AppRes.fatherNameHint}';
      return false;
    }
    if (gender == '') {
      genderFocusNode.requestFocus();
      errorMsg = 'invalid ${AppRes.genderHint}';
      return false;
    } else if (address.text == '') {
      addressFocusNode.requestFocus();
      errorMsg = 'invalid ${AppRes.addressHint}';
      return false;
    }
    if (state == '') {
      stateFocusNode.requestFocus();
      errorMsg = 'invalid ${AppRes.stateHint}';
      return false;
    } else if (city == '') {
      cityFocusNode.requestFocus();
      errorMsg = 'invalid ${AppRes.cityHint}';
      return false;
    } else if (pinCode.text == '') {
      pinCodeFocusNode.requestFocus();
      errorMsg = 'invalid ${AppRes.pincodeHint}';
      return false;
    } else if (mobileNo.text == '' || mobileNo.text.length < 10) {
      mobileNoFocusNode.requestFocus();
      errorMsg = 'invalid ${AppRes.mobileHint}';
      return false;
    } else if (eMail.text == '' || !emailExp.hasMatch(eMail.text)) {
      eMailFocusNode.requestFocus();
      errorMsg = 'invalid ${AppRes.emailHint}';
      return false;
    } else if (invoiceNo.text == '') {
      invoiceNoFocusNode.requestFocus();
      errorMsg = 'invalid ${AppRes.invoiceHint}';
      return false;
    } else if (invoiceDate == '') {
      // invoi.requestFocus();
      errorMsg = 'invalid ${AppRes.invoiceDateHint}';
      return false;
    } else if (fees.text == '') {
      feesFocusNode.requestFocus();
      errorMsg = 'invalid ${AppRes.feesHint}';
      return false;
    } else if (dob.text == '') {
      // dat.requestFocus();
      errorMsg = 'invalid ${AppRes.dobHint}';
      return false;
    } else if (aadharCard.text == '' || aadharCard.text.length < 12) {
      aadharCardFocusNode.requestFocus();
      errorMsg = 'invalid ${AppRes.aadhaarHint}';
      return false;
    } else if (pan.text.length < 10 ||
        panExp.allMatches(pan.text.toString(), 0).toString() == "()") {
      panFocusNode.requestFocus();
      errorMsg = 'invalid ${AppRes.panHint}';
      return false;
    } else {
      return true;
    }
  }

  clear() {
    applicantType = '';
    applicationMode = '';
    gender = '';
    city = '';
    state = '';
    invoiceDate = '';
    errorMsg = '';
    diplomaUniversityLocation = '';
    diplomaMarksheet = '';
    graduateUniversityLocation = '';
    graduateMarksheet = '';
    postGraduateUniversityLocation = '';
    postGraduateMarksheet = '';
    professionalStatus = '';
    regOtherRV = '';
    ackEmailSent = '';
    membershipStatus = '';
    proposedMeetingDate = '';
    financialYear = '';

    membershipNo.text = '';
    name.text = '';
    dob.text = '';
    receivedDate.text = '';
    fatherName.text = '';
    address.text = '';
    pinCode.text = '';
    mobileNo.text = '';
    eMail.text = '';
    invoiceNo.text = '';
    fees.text = '';
    pan.text = '';
    aadharCard.text = '';
    diplomaDegree.text = '';
    diplomaPassingYear.text = '';
    diplomaUniversityName.text = '';
    diplomaUniversityApproved = '';
    graduateDegree.text = '';
    graduatePassingYear.text = '';
    graduateUniversityName.text = '';
    graduateUniversityApproved = '';
    postGraduatePassingYear.text = '';
    postGraduateDegree.text = '';
    postGraduateUniversityName.text = '';
    postGraduateUniversityApproved= '';
    designation.text = '';
    fromDate.text = '';
    toDate.text = '';
    experienceMonths.text = '';
    experienceYears.text = '';
    membershipClass = '';
    assetClass = '';
    memberPlan = '';
    acknowledgementNo.text = '';
    approvedbyMem.text = '';
    remarks.text = '';
  }
}
