import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:iovuserform/utils/drop_down.dart';

import '../../utils/appres.dart';
import '../../utils/color_res.dart';

class FormFields extends StatelessWidget {
  final VoidCallback onTextFieldTap, onFormSubmit;
  final Function(String value) onApplicantTypeChange,
      onApplicationModeChange,
      onGenderChange,
      onCityChange,
      onStateChange,
      onReceiveDateChange,
      onInvoiceDateChange,
      ondiplomaUniversityLocationChange,
      ondiplomaMarksheetChange,
      ongraduateUniversityLocationChange,
      ongraduateMarksheetChange,
      onpostGraduateUniversityLocationChange,
      onpostGraduateMarksheetChange,
      onprofessionalStatusChange,
      onfromDateChange,
      ontoDateChange,
      onregOtherRVChange,
      onEmailChange,
      onMemberShipChange,
      onproposedMeetingDateChange,
      onFinancialYearChange,
      onDOBChange,
      onDiplomaPassingYearChange,
      onGraduatePassingYearChange,
      onPostGraduatePassingYearChange;

  final TextEditingController membershipNo,
      name,
      dob,
      receivedDate,
      fatherName,
      address,
      pinCode,
      mobileNo,
      eMail,
      invoiceNo,
      fees,
      pan,
      aadharCard,
      diplomaDegree,
      diplomaPassingYear,
      diplomaUniversityName,
      diplomaUniversityApproved,
      graduateDegree,
      graduatePassingYear,
      graduateUniversityName,
      graduateUniversityApproved,
      postGraduatePassingYear,
      postGraduateDegree,
      postGraduateUniversityName,
      postGraduateUniversityApproved,
      designation,
      fromDate,
      toDate,
      experienceMonths,
      experienceYears,
      membershipClass,
      assetClass,
      annualLM,
      acknowledgementNo,
      approvedbyMem,
      remarks;

  final FocusNode
  applicantTypeFocusNode,
  membershipNoFocusNode,
      applicationFocusNode,
      nameFocusNode,
      fatherNameFocusNode,
      genderFocusNode,
      addressFocusNode,
      stateFocusNode,
      cityFocusNode,
      pinCodeFocusNode,
      mobileNoFocusNode,
      eMailFocusNode,
      invoiceNoFocusNode,
      feesFocusNode,
      panFocusNode,
      aadharCardFocusNode,
      diplomaDegreeFocusNode,
      diplomaMarksheetFocusNode,
      diplomaPassingYearFocusNode,
      diplomaUniversityNameFocusNode,
      diplomaUniversityLocationFocusNode,
      diplomaUniversityApprovedFocusNode,
      graduateDegreeFocusNode,
      graduatePassingYearFocusNode,
      graduateUniversityNameFocusNode,
      graduateUniversityLocationFocusNode,
      graduateUniversityApprovedFocusNode,
      postGraduatePassingYearFocusNode,
      postGraduateDegreeFocusNode,
      postGraduateMarksheetFocusNode,
      graduateMarksheetFocusNode,
      postGraduateUniversityNameFocusNode,
      postGraduateUniversityLocationFocusNode,
      professionalFocusNode,
      designationFocusNode,
      postGraduateUniversityApprovedFocusNode,
      experienceMonthsFocusNode,
      experienceYearsFocusNode,
      membershipClassFocusNode,
      assetClassFocusNode,
      regOtherRVFocusNode,
      annualLMFocusNode,
      acknowledgementNoFocusNode,
      ackEmailSentFocusNode,
      membershipStatusFocusNode,
      approvedbyMemFocusNode,
      remarksFocusNode;

  final String errorMsg,
      applicantType,
      applicationMode,
      gender,
      city,
      state,
      invoiceDate,
      diplomaUniversityLocation,
      diplomaMarksheet,
      graduateUniversityLocation,
      graduateMarksheet,
      postGraduateUniversityLocation,
      postGraduateMarksheet,
      professionalStatus,
      regOtherRV,
      ackEmailSent,
      membershipStatus,
      proposedMeetingDate,
      financialYear;

  final List<String> cityList, stateList;

  const FormFields(
      {Key? key,
      required this.errorMsg,
      required this.applicantType,
      required this.applicationMode,
      required this.gender,
      required this.city,
      required this.state,
      required this.invoiceDate,
      required this.diplomaUniversityLocation,
      required this.diplomaMarksheet,
      required this.graduateUniversityLocation,
      required this.graduateMarksheet,
      required this.postGraduateUniversityLocation,
      required this.postGraduateMarksheet,
      required this.professionalStatus,
      required this.fromDate,
      required this.toDate,
      required this.regOtherRV,
      required this.ackEmailSent,
      required this.membershipStatus,
      required this.proposedMeetingDate,
      required this.financialYear,
      required this.onTextFieldTap,
      required this.onFormSubmit,
      required this.onApplicantTypeChange,
      required this.onApplicationModeChange,
      required this.onGenderChange,
      required this.onCityChange,
      required this.onStateChange,
      required this.onReceiveDateChange,
      required this.onInvoiceDateChange,
      required this.ondiplomaUniversityLocationChange,
      required this.ondiplomaMarksheetChange,
      required this.ongraduateUniversityLocationChange,
      required this.ongraduateMarksheetChange,
      required this.onpostGraduateUniversityLocationChange,
      required this.onpostGraduateMarksheetChange,
      required this.onprofessionalStatusChange,
      required this.onfromDateChange,
      required this.ontoDateChange,
      required this.onregOtherRVChange,
      required this.onEmailChange,
      required this.onMemberShipChange,
      required this.onproposedMeetingDateChange,
      required this.onFinancialYearChange,
      required this.onDOBChange,
      required this.onDiplomaPassingYearChange,
      required this.onGraduatePassingYearChange,
      required this.onPostGraduatePassingYearChange,
      required this.membershipNo,
      required this.name,
      required this.dob,
      required this.receivedDate,
      required this.fatherName,
      required this.address,
      required this.pinCode,
      required this.mobileNo,
      required this.eMail,
      required this.invoiceNo,
      required this.fees,
      required this.pan,
      required this.aadharCard,
      required this.diplomaDegree,
      required this.diplomaPassingYear,
      required this.diplomaUniversityName,
      required this.diplomaUniversityApproved,
      required this.graduateDegree,
      required this.graduatePassingYear,
      required this.graduateUniversityName,
      required this.graduateUniversityApproved,
      required this.postGraduatePassingYear,
      required this.postGraduateDegree,
      required this.postGraduateUniversityName,
      required this.postGraduateUniversityApproved,
      required this.designation,
      required this.experienceMonths,
      required this.experienceYears,
      required this.membershipClass,
      required this.assetClass,
      required this.annualLM,
      required this.acknowledgementNo,
      required this.approvedbyMem,
      required this.remarks,
      required this.applicantTypeFocusNode,
      required this.membershipNoFocusNode,
      required this.applicationFocusNode,
      required this.nameFocusNode,
      required this.fatherNameFocusNode,
      required this.genderFocusNode,
      required this.addressFocusNode,
      required this.stateFocusNode,
      required this.cityFocusNode,
      required this.pinCodeFocusNode,
      required this.mobileNoFocusNode,
      required this.eMailFocusNode,
      required this.invoiceNoFocusNode,
      required this.feesFocusNode,
      required this.panFocusNode,
      required this.aadharCardFocusNode,
      required this.diplomaDegreeFocusNode,
      required this.diplomaMarksheetFocusNode,
      required this.diplomaPassingYearFocusNode,
      required this.diplomaUniversityNameFocusNode,
      required this.diplomaUniversityLocationFocusNode,
      required this.diplomaUniversityApprovedFocusNode,
      required this.graduateDegreeFocusNode,
      required this.graduateMarksheetFocusNode,
      required this.graduatePassingYearFocusNode,
      required this.graduateUniversityNameFocusNode,
      required this.graduateUniversityLocationFocusNode,
      required this.graduateUniversityApprovedFocusNode,
      required this.postGraduatePassingYearFocusNode,
      required this.postGraduateDegreeFocusNode,
      required this.postGraduateMarksheetFocusNode,
      required this.postGraduateUniversityNameFocusNode,
      required this.postGraduateUniversityLocationFocusNode,
      required this.professionalFocusNode,
      required this.designationFocusNode,
      required this.postGraduateUniversityApprovedFocusNode,
      required this.experienceMonthsFocusNode,
      required this.experienceYearsFocusNode,
      required this.membershipClassFocusNode,
      required this.regOtherRVFocusNode,
      required this.assetClassFocusNode,
      required this.annualLMFocusNode,
      required this.acknowledgementNoFocusNode,
      required this.ackEmailSentFocusNode,
      required this.membershipStatusFocusNode,
      required this.approvedbyMemFocusNode,
      required this.remarksFocusNode,
      required this.cityList,
      required this.stateList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child:  Column(
        children: [
          Row(
            children: [
              /* -----APPLICATION TYPE.-----*/
              Expanded(
                  child: _dropDownField(
                      controller: TextEditingController(text: applicantType),
                      focusNode: applicantTypeFocusNode,
                      hint: AppRes.applicationTypeHint,
                      error: errorMsg.contains(AppRes.applicationTypeHint)?errorMsg:'',
                      dropList: AppRes.applicationList,
                      onChangeMethod: onApplicantTypeChange,
                      context: context)),
              /* -----MEMBERSHIP NO.-----*/
              Expanded(
                  child: _textField(
                      controller: membershipNo,
                      focusNode: membershipNoFocusNode,
                      error: errorMsg.contains(AppRes.memberShipHint)?errorMsg:'',
                      hint: AppRes.memberShipHint,
                      inputFormaters: FilteringTextInputFormatter.allow(
                          RegExp("[a-z0-9A-Z/]")),
                      keyBoardType: TextInputType.name)),
              /*//  -----RECEIVED DATE----*/
              Expanded(
                  child: _datePicker(
                      controller: receivedDate,
                      // focusNode: receivedDateFocusNode,
                      error: errorMsg.contains(AppRes.receivedDateHint)?errorMsg:'',
                      startDate: DateTime.now(),
                      onChangeMethod: onReceiveDateChange,
                      hint: AppRes.receivedDateHint,
                      context: context))
            ],
          ),
          Row(
            children: [
              //  -----APPLIATION MODE----
              Expanded(
                  child: _dropDownField(
                      controller: TextEditingController(text: applicationMode),
                      focusNode: applicationFocusNode,
                      error: errorMsg.contains(AppRes.modeHint)?errorMsg:'',
                      hint: AppRes.modeHint,
                      dropList: AppRes.applicationModeList,
                      onChangeMethod: onApplicationModeChange,
                      context: context)),
              //-----NAME AS PER DOCUMENTS-----
              Expanded(
                  child: _textField(
                      controller: name,
                      focusNode: nameFocusNode,
                      error: errorMsg.contains(AppRes.nameHint)?errorMsg:'',
                      hint: AppRes.nameHint,
                      inputFormaters:
                          FilteringTextInputFormatter.allow(RegExp("[a-zA-Z]")),
                      keyBoardType: TextInputType.name)),
              //-----FATHER NAME----
              Expanded(
                  child: _textField(
                      controller: fatherName,
                      focusNode: fatherNameFocusNode,
                      error: errorMsg.contains(AppRes.fatherNameHint)?errorMsg:'',
                      hint: AppRes.fatherNameHint,
                      inputFormaters:
                          FilteringTextInputFormatter.allow(RegExp("[a-zA-Z]")),
                      keyBoardType: TextInputType.name)),
              //-----GENDER-----
              Expanded(
                  child: _dropDownField(
                      controller: TextEditingController(text: gender),
                      focusNode: genderFocusNode,
                      hint: AppRes.genderHint,
                      error: errorMsg.contains(AppRes.genderHint)?errorMsg:'',
                      dropList: AppRes.genderList,
                      onChangeMethod: onGenderChange,
                      context: context)),
            ],
          ),
          Row(
            children: [
              //-----Address-----
              Expanded(
                  child: _textField(
                      controller: address,
                      focusNode: addressFocusNode,
                      error:errorMsg.contains(AppRes.addressHint)?errorMsg:'',
                      hint: AppRes.addressHint,
                      inputFormaters: FilteringTextInputFormatter.allow(
                          RegExp("[a-zA-Z0-9,/]")),
                      keyBoardType: TextInputType.name)),
              //-----STATE-----
              Expanded(
                  child: _dropDownField(
                      controller: TextEditingController(text: state),
                      focusNode: stateFocusNode,
                      hint: AppRes.stateHint,
                      error: errorMsg.contains(AppRes.stateHint)?errorMsg:'',
                      dropList: stateList,
                      onChangeMethod: onStateChange,
                      context: context)),
              //-----CITY-----
              Expanded(
                  child: _dropDownField(
                      controller: TextEditingController(text: city),
                      focusNode: cityFocusNode,
                      hint: AppRes.cityHint,
                      error: errorMsg.contains(AppRes.cityHint)?errorMsg:'',
                      dropList: cityList,
                      onChangeMethod: onCityChange,
                      context: context)),
              //-----PINCODE----
              Expanded(
                  child: _textField(
                      controller: pinCode,
                      focusNode: pinCodeFocusNode,
                      error: errorMsg.contains(AppRes.pincodeHint)?errorMsg:'',
                      hint: AppRes.pincodeHint,
                      maxlength: 6,
                      inputFormaters:
                          FilteringTextInputFormatter.allow(RegExp("[0-9]")),
                      keyBoardType: TextInputType.number)),
            ],
          ),
          Row(
            children: [
              //-----MOBILE NO----
              Expanded(
                  child: _textField(
                      controller: mobileNo,
                      focusNode: mobileNoFocusNode,
                      error: errorMsg.contains(AppRes.mobileHint)?errorMsg:'',
                      hint: AppRes.mobileHint,
                      maxlength: 10,
                      inputFormaters:
                          FilteringTextInputFormatter.allow(RegExp("[0-9]")),
                      keyBoardType: TextInputType.number)),
              //-----Email ID----
              Expanded(
                  child: _textField(
                      controller: eMail,
                      focusNode: eMailFocusNode,
                      error: errorMsg.contains(AppRes.emailHint)?errorMsg:'',
                      hint: AppRes.emailHint,
                      maxlength: 250,
                      keyBoardType: TextInputType.emailAddress)),
              //-----INVOICE NO----
              Expanded(
                  child: _textField(
                      controller: invoiceNo,
                      focusNode: invoiceNoFocusNode,
                      error: errorMsg.contains(AppRes.invoiceHint)?errorMsg:'',
                      hint: AppRes.invoiceHint,
                      maxlength: 6,
                      inputFormaters:
                          FilteringTextInputFormatter.allow(RegExp("[0-9]")),
                      keyBoardType: TextInputType.number)),
              //-----INVOICE DATE----
              Expanded(
                  child: _datePicker(
                      controller: TextEditingController(text: invoiceDate),
                      error: errorMsg.contains(AppRes.invoiceDateHint)?errorMsg:'',
                      startDate: DateTime.now(),
                      hint: AppRes.invoiceDateHint,
                      onChangeMethod: onInvoiceDateChange,
                      context: context)),
              //-----FEES----
              Expanded(
                  child: _textField(
                      controller: fees,
                      focusNode: feesFocusNode,
                      error: errorMsg.contains(AppRes.feesHint)?errorMsg:'',
                      hint: AppRes.feesHint,
                      maxlength: 6,
                      inputFormaters:
                          FilteringTextInputFormatter.allow(RegExp("[0-9]")),
                      keyBoardType: TextInputType.number)),
            ],
          ),
          Row(
            children: [
              //-----DATE OF BIRTH----
              Expanded(
                  child: _datePicker(
                      controller: dob,
                      // focusNode: dobFocusNode,
                      error: errorMsg.contains(AppRes.dobHint)?errorMsg:'',
                      startDate: DateTime((DateTime.now().year - 1)),
                      onChangeMethod: onDOBChange,
                      hint: AppRes.dobHint,
                      context: context)),
              //-----AADHAAR NO----
              Expanded(
                  child: _textField(
                      controller: aadharCard,
                      focusNode: aadharCardFocusNode,
                      error: errorMsg.contains(AppRes.aadhaarHint)?errorMsg:'',
                      hint: AppRes.aadhaarHint,
                      maxlength: 12,
                      inputFormaters:
                          FilteringTextInputFormatter.allow(RegExp("[0-9]")),
                      keyBoardType: TextInputType.number)),
              //-----PAN ID----
              Expanded(
                  child: _textField(
                      controller: pan,
                      focusNode: panFocusNode,
                      error: errorMsg.contains(AppRes.panHint)?errorMsg:'',
                      hint: AppRes.panHint,
                      inputFormaters: FilteringTextInputFormatter.allow(
                          RegExp("[0-9A-Za-z]")),
                      maxlength: 10,
                      keyBoardType: TextInputType.number)),
            ],
          ),
          /*----EDUCATION QUALIFICATION-----*/
          Container(
            margin: EdgeInsets.only(top: 15),
            padding: EdgeInsets.only(top: 10, left: 7),
            decoration: BoxDecoration(
                border: Border.all(color: ColorRes.grey2, width: 1.5),
                borderRadius: BorderRadius.all(Radius.circular(5))),
            child: Column(
              children: [
                const Text(
                  AppRes.educationQualification,
                  style: TextStyle(color: ColorRes.black2, fontSize: 20),
                ),
                //----DIPLOMA-----
                const SizedBox(
                  height: 10,
                ),
                heading(AppRes.diplomaDegree),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    //-----DIPLOMA DEGREE.-----
                    Expanded(
                        child: _textField(
                            controller: diplomaDegree,
                            focusNode: diplomaDegreeFocusNode,
                            error: errorMsg.contains(AppRes.diplomaDegree)?errorMsg:'',
                            hint: AppRes.diplomaDegree,
                            inputFormaters: FilteringTextInputFormatter.allow(
                                RegExp("[A-Za-z]")),
                            keyBoardType: TextInputType.name)),
                    //-----MARKSHEET.-----
                    Expanded(
                        child: _dropDownField(
                            controller:
                                TextEditingController(text: diplomaMarksheet),
                            focusNode: diplomaMarksheetFocusNode,
                            error: errorMsg.contains('diploma ${AppRes.haveMarkSheetHint}')?errorMsg:'',
                            hint: AppRes.haveMarkSheetHint,
                            dropList: AppRes.markSheetList,
                            onChangeMethod: ondiplomaMarksheetChange,
                            context: context)),
                  ],
                ),
                Row(
                  children: [
                    //-----University Name.-----
                    Expanded(
                        child: _textField(
                            controller: diplomaUniversityName,
                            focusNode: diplomaUniversityNameFocusNode,
                            error: errorMsg.contains('diploma ${AppRes.universityNameHint}')?errorMsg:'',
                            hint: AppRes.universityNameHint,
                            inputFormaters: FilteringTextInputFormatter.allow(
                                RegExp("[A-Za-z]")),
                            keyBoardType: TextInputType.name)),
                    //-----UNIVERSITY LOCATION.-----
                    Expanded(
                        child: _dropDownField(
                            controller: TextEditingController(
                                text: diplomaUniversityLocation),
                            focusNode: diplomaUniversityLocationFocusNode,
                            error: errorMsg.contains('diploma ${AppRes.universityLocationHint}')?errorMsg:'',
                            hint: AppRes.universityLocationHint,
                            dropList: stateList,
                            onChangeMethod: ondiplomaUniversityLocationChange,
                            context: context)),
                    //-----UNIVERSITY Approved.-----
                    Expanded(
                        child: _textField(
                            controller: diplomaUniversityApproved,
                            focusNode: diplomaUniversityApprovedFocusNode,
                            error: errorMsg.contains('diploma ${AppRes.universityApprovedHint}')?errorMsg:'',
                            hint: AppRes.universityApprovedHint,
                            inputFormaters: FilteringTextInputFormatter.allow(
                                RegExp("[A-Za-z]")),
                            keyBoardType: TextInputType.name)),
                    //-----PASSING YEAR----
                    Expanded(
                        child: _yearPicker(
                            controller: diplomaPassingYear,
                            error: errorMsg.contains('diploma ${AppRes.passingYearHint}')?errorMsg:'',
                            startDate: DateTime((DateTime.now().year - 3)),
                            onChangeMethod: onDiplomaPassingYearChange,
                            hint: AppRes.passingYearHint,
                            context: context)),
                  ],
                ),
                ////----GRADUATE-----
                const SizedBox(
                  height: 10,
                ),
                heading(AppRes.graduateDegree),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                        child: _textField(
                            controller: graduateDegree,
                            focusNode: graduateDegreeFocusNode,
                            error: errorMsg.contains(AppRes.graduateDegree)?errorMsg:'',
                            hint: AppRes.graduateDegree,
                            inputFormaters: FilteringTextInputFormatter.allow(
                                RegExp("[A-Za-z]")),
                            keyBoardType: TextInputType.name)),
                    // -----MARKSHEET.-----
                    Expanded(
                        child: _dropDownField(
                            controller:
                                TextEditingController(text: graduateMarksheet),
                            focusNode: graduateMarksheetFocusNode,
                            error: errorMsg.contains('graduation ${AppRes.haveMarkSheetHint}')?errorMsg:'',
                            hint: AppRes.haveMarkSheetHint,
                            dropList: AppRes.markSheetList,
                            onChangeMethod: ongraduateMarksheetChange,
                            context: context)),
                  ],
                ),
                Row(
                  children: [
                    //-----University Name.-----
                    Expanded(
                        child: _textField(
                            controller: graduateUniversityName,
                            focusNode: graduateUniversityNameFocusNode,
                            error: errorMsg.contains('graduation ${AppRes.universityNameHint}')?errorMsg:'',
                            hint: AppRes.universityNameHint,
                            inputFormaters: FilteringTextInputFormatter.allow(
                                RegExp("[A-Za-z]")),
                            keyBoardType: TextInputType.name)),
                    //-----UNIVERSITY LOCATION.-----
                    Expanded(
                        child: _dropDownField(
                            controller: TextEditingController(
                                text: graduateUniversityLocation),
                            focusNode: graduateUniversityLocationFocusNode,
                            error: errorMsg.contains('graduation ${AppRes.universityLocationHint}')?errorMsg:'',
                            hint: AppRes.universityLocationHint,
                            dropList: stateList,
                            onChangeMethod: ongraduateUniversityLocationChange,
                            context: context)),
                    //-----UNIVERSITY Approved.-----
                    Expanded(
                        child: _textField(
                            controller: graduateUniversityApproved,
                            focusNode: graduateUniversityApprovedFocusNode,
                            error: errorMsg.contains('graduation ${AppRes.universityApprovedHint}')?errorMsg:'',
                            hint: AppRes.universityApprovedHint,
                            inputFormaters: FilteringTextInputFormatter.allow(
                                RegExp("[A-Za-z]")),
                            keyBoardType: TextInputType.name)),
                    //-----PASSING YEAR----
                    Expanded(
                        child: _yearPicker(
                            controller: graduatePassingYear,
                            error: errorMsg.contains('graduation ${AppRes.passingYearHint}')?errorMsg:'',
                            startDate: DateTime((DateTime.now().year - 3)),
                            hint: AppRes.passingYearHint,
                            onChangeMethod: onGraduatePassingYearChange,
                            context: context)),
                  ],
                ),
                //----POST GRADUATE-----
                const SizedBox(
                  height: 10,
                ),
                heading(AppRes.postGraduateDegree),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                        child: _textField(
                            controller: postGraduateDegree,
                            focusNode: postGraduateDegreeFocusNode,
                            error: errorMsg.contains('post graduation ${AppRes.postGraduateDegree}')?errorMsg:'',
                            hint: AppRes.postGraduateDegree,
                            inputFormaters: FilteringTextInputFormatter.allow(
                                RegExp("[A-Za-z]")),
                            keyBoardType: TextInputType.name)),
                    //-----MARKSHEET.-----
                    Expanded(
                        child: _dropDownField(
                            controller: TextEditingController(
                                text: postGraduateMarksheet),
                            focusNode: postGraduateMarksheetFocusNode,
                            error: errorMsg.contains('post graduation ${AppRes.haveMarkSheetHint}')?errorMsg:'',
                            hint: AppRes.haveMarkSheetHint,
                            dropList: AppRes.markSheetList,
                            onChangeMethod: onpostGraduateMarksheetChange,
                            context: context)),
                  ],
                ),
                Row(
                  children: [
                    //-----University Name.-----
                    Expanded(
                        child: _textField(
                            controller: postGraduateUniversityName,
                            focusNode: postGraduateUniversityNameFocusNode,
                            error: errorMsg.contains('post graduation ${AppRes.universityNameHint}')?errorMsg:'',
                            hint: AppRes.universityNameHint,
                            inputFormaters: FilteringTextInputFormatter.allow(
                                RegExp("[A-Za-z]")),
                            keyBoardType: TextInputType.name)),
//-----UNIVERSITY LOCATION.-----
                    Expanded(
                        child: _dropDownField(
                            controller: TextEditingController(
                                text: postGraduateUniversityLocation),
                            focusNode: postGraduateUniversityLocationFocusNode,
                            error: errorMsg.contains('post graduation ${AppRes.universityLocationHint}')?errorMsg:'',
                            hint: AppRes.universityLocationHint,
                            dropList: stateList,
                            onChangeMethod:
                                onpostGraduateUniversityLocationChange,
                            context: context)),
/*-----UNIVERSITY Approved.-----*/
                    Expanded(
                        child: _textField(
                            controller: postGraduateUniversityApproved,
                            focusNode: postGraduateUniversityNameFocusNode,
                            error: errorMsg.contains('post graduation ${AppRes.universityApprovedHint}')?errorMsg:'',
                            hint: AppRes.universityApprovedHint,
                            inputFormaters: FilteringTextInputFormatter.allow(
                                RegExp("[A-Za-z]")),
                            keyBoardType: TextInputType.name)),
/*-----PASSING YEAR----*/
                    Expanded(
                        child: _yearPicker(
                            controller: postGraduatePassingYear,
                            error: errorMsg.contains('post gradutaion ${AppRes.passingYearHint}')?errorMsg:'',
                            startDate: DateTime((DateTime.now().year - 3)),
                            hint: AppRes.passingYearHint,
                            onChangeMethod: onPostGraduatePassingYearChange,
                            context: context)),
                  ],
                ),
              ],
            ),
          ),
          /*----CARRIER EXPERIENCE-----*/
          Container(
            margin: EdgeInsets.only(top: 15),
            padding: EdgeInsets.only(top: 10, left: 7),
            decoration: BoxDecoration(
                border: Border.all(color: ColorRes.grey2, width: 1.5),
                borderRadius: BorderRadius.all(Radius.circular(5))),
            child: Column(
              children: [
                const Text(
                  AppRes.carrierQualification,
                  style: TextStyle(color: ColorRes.black2, fontSize: 20),
                ),
                //----DIPLOMA-----
                const SizedBox(
                  height: 10,
                ),
                heading(AppRes.employementStatus),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    //-----EMPLOYMENT STATUS.-----
                    Expanded(
                        child: _dropDownField(
                      controller:
                          TextEditingController(text: professionalStatus),
                      context: context,
                      focusNode: professionalFocusNode,
                      dropList: AppRes.employmentStatusList,
                      onChangeMethod: onprofessionalStatusChange,
                      error: errorMsg.contains(AppRes.employementStatus)?errorMsg:'',
                      hint: AppRes.employementStatus,
                    )),
                    //-----position.-----
                    Expanded(
                        child: _textField(
                      controller: designation,
                      focusNode: designationFocusNode,
                      error: errorMsg.contains(AppRes.designation)?errorMsg:'',
                      inputFormaters:
                          FilteringTextInputFormatter.allow(RegExp("[A-Za-z]")),
                      hint: AppRes.designation,
                    )),
                  ],
                ),
                Row(
                  children: [
                    //-----period from.-----
                    Expanded(
                        child: _yearPicker(
                      controller: fromDate,
                      context: context,
                      onChangeMethod: onfromDateChange,
                      startDate: DateTime(DateTime.now().year - 4),
                      error: errorMsg.contains(AppRes.periodFrom)?errorMsg:'',
                      hint: AppRes.periodFrom,
                    )),
                    //-----period to.-----
                    Expanded(
                        child: _yearPicker(
                      controller: toDate,
                      context: context,
                      startDate: DateTime(DateTime.now().year - 4),
                      error: errorMsg.contains(AppRes.periodTo)?errorMsg:'',
                      onChangeMethod: ontoDateChange,
                      hint: AppRes.periodTo,
                    )),
                    //-----Experience in Years.-----
                    Expanded(
                        child: _textField(
                      controller: experienceYears,
                      focusNode: experienceYearsFocusNode,
                      error: errorMsg.contains(AppRes.experienceInYears)?errorMsg:'',
                      inputFormaters:
                          FilteringTextInputFormatter.allow(RegExp("[0-9]")),
                      hint: AppRes.experienceInYears,
                    )),
                    //-----Experience in months.-----
                    Expanded(
                        child: _textField(
                      controller: experienceMonths,
                      focusNode: experienceMonthsFocusNode,
                      error: errorMsg.contains(AppRes.experienceInMonths)?errorMsg:'',
                      inputFormaters:
                          FilteringTextInputFormatter.allow(RegExp("[0-9]")),
                      hint: AppRes.experienceInMonths,
                    )),
                  ],
                ),
              ],
            ),
          ),

          /*----Membership STATUS-----*/
          Container(
            margin: EdgeInsets.only(top: 15),
            padding: EdgeInsets.only(top: 10, left: 7),
            decoration: BoxDecoration(
                border: Border.all(color: ColorRes.grey2, width: 1.5),
                borderRadius: BorderRadius.all(Radius.circular(5))),
            child: Column(
              children: [
                const Text(
                  AppRes.memberShipInfo,
                  style: TextStyle(color: ColorRes.black2, fontSize: 20),
                ),
                const SizedBox(
                  height: 10,
                ),
                heading(AppRes.memberShipInfo),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                        child: _textField(
                      controller: membershipClass,
                      focusNode: membershipClassFocusNode,
                      error: errorMsg.contains(AppRes.membershipClass)?errorMsg:'',
                      inputFormaters:
                          FilteringTextInputFormatter.allow(RegExp("[A-Za-z]")),
                      hint: AppRes.membershipClass,
                    )),
                    Expanded(
                        child: _textField(
                      controller: assetClass,
                      focusNode: assetClassFocusNode,
                      error: errorMsg.contains(AppRes.assetClass)?errorMsg:'',
                      inputFormaters:
                          FilteringTextInputFormatter.allow(RegExp("[A-Za-z]")),
                      hint: AppRes.assetClass,
                    )),
                    Expanded(
                        child: _textField(
                      controller: annualLM,
                      focusNode: annualLMFocusNode,
                      error: errorMsg.contains(AppRes.annualLM)?errorMsg:'',
                      inputFormaters:
                          FilteringTextInputFormatter.allow(RegExp("[A-Za-z]")),
                      hint: AppRes.annualLM,
                    )),
                    Expanded(
                        child: _dropDownField(
                      controller: TextEditingController(text: regOtherRV),
                      focusNode: regOtherRVFocusNode,
                      error: errorMsg.contains(AppRes.otherRV)?errorMsg:'',
                      dropList: AppRes.markSheetList,
                      onChangeMethod: onregOtherRVChange,
                      context: context,
                      hint: AppRes.otherRV,
                    )),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        child: _textField(
                      controller: acknowledgementNo,
                      focusNode: acknowledgementNoFocusNode,
                      error: errorMsg.contains(AppRes.ackNo)?errorMsg:'',
                      inputFormaters: FilteringTextInputFormatter.allow(
                          RegExp("[A-Za-z/0-9]")),
                      hint: AppRes.ackNo,
                    )),
                    Expanded(
                        child: _dropDownField(
                      controller: TextEditingController(text: ackEmailSent),
                      focusNode: ackEmailSentFocusNode,
                      error: errorMsg.contains(AppRes.emailSent)?errorMsg:'',
                      dropList: AppRes.markSheetList,
                      onChangeMethod: onEmailChange,
                      context: context,
                      hint: AppRes.emailSent,
                    )),
                    Expanded(
                        child: _dropDownField(
                      controller: TextEditingController(text: membershipStatus),
                      focusNode: membershipStatusFocusNode,
                      error: errorMsg.contains(AppRes.membershipStatus)?errorMsg:'',
                      dropList: AppRes.memberShipList,
                      onChangeMethod: onMemberShipChange,
                      context: context,
                      hint: AppRes.membershipStatus,
                    )),
                    Expanded(
                        child: _datePicker(
                      controller:
                          TextEditingController(text: proposedMeetingDate),
                      error: errorMsg.contains(AppRes.meetingDate)?errorMsg:'',
                      onChangeMethod: onproposedMeetingDateChange,
                      startDate: DateTime.now(),
                      context: context,
                      hint: AppRes.meetingDate,
                    )),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        child: _textField(
                      controller: approvedbyMem,
                      focusNode: approvedbyMemFocusNode,
                      error: errorMsg.contains(AppRes.approvedBy)?errorMsg:'',
                      inputFormaters:
                          FilteringTextInputFormatter.allow(RegExp("[A-Za-z]")),
                      hint: AppRes.approvedBy,
                    )),
                    Expanded(
                        child: _textField(
                      controller: remarks,
                      focusNode: remarksFocusNode,
                      error: errorMsg.contains(AppRes.remarks)?errorMsg:'',
                      inputFormaters:
                          FilteringTextInputFormatter.allow(RegExp("[A-Za-z]")),
                      hint: AppRes.remarks,
                    )),
                    Expanded(
                        child: _yearPicker(
                      controller: TextEditingController(text: financialYear),
                      error: errorMsg.contains(AppRes.financialYear)?errorMsg:'',
                      startDate: DateTime(DateTime.now().year),
                      onChangeMethod: onFinancialYearChange,
                      context: context,
                      hint: AppRes.financialYear,
                    )),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }

  Widget _textField(
      {required TextEditingController controller,
      required FocusNode focusNode,
      required String error,
      required String hint,
      TextInputFormatter? inputFormaters,
      int? maxlength,
      TextInputType? keyBoardType}) {
    return Container(
        margin: EdgeInsets.all(7),
        height: 60,
        decoration: BoxDecoration(
          color: ColorRes.lightGrey2,
          borderRadius: BorderRadius.circular(5),
        ),
        child: inputFormaters == null
            ? TextField(
                maxLength: maxlength,
                controller: controller,
                focusNode: focusNode,
                keyboardType: keyBoardType,
                showCursor: keyBoardType == null ? true : false,
                textCapitalization: TextCapitalization.words,
                style: const TextStyle(
                  color: ColorRes.darkGrey6,
                  fontSize: 18,
                ),
                decoration: InputDecoration(
                  counterText: '',
                  hintText: error == '' ? hint : error,
                  hintStyle: TextStyle(
                    color: error == '' ? ColorRes.darkGrey6 : ColorRes.red,
                  ),
                  labelText: hint.replaceAll("Enter ", ""),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                          color:
                              error == '' ? ColorRes.light_blue5 : ColorRes.red,
                          width: 1)),
                  contentPadding: const EdgeInsets.only(bottom: 10, left: 10),
                ),
              )
            : TextField(
                maxLength: maxlength,
                controller: controller,
                focusNode: focusNode,
                inputFormatters: [inputFormaters],
                keyboardType: keyBoardType,
                showCursor: keyBoardType == null ? true : false,
                textCapitalization: TextCapitalization.words,
                style: TextStyle(
                  color: ColorRes.darkGrey6,
                  fontSize: 18,
                ),
                decoration: InputDecoration(
                  counterText: '',
                  hintText: error == '' ? hint : error,
                  hintStyle: TextStyle(
                    color: error == "" ? ColorRes.darkGrey6 : ColorRes.red,
                  ),
                  labelText: hint.replaceAll("Enter ", ""),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                          color:
                              error == "" ? ColorRes.light_blue5 : ColorRes.red,
                          width: 1)),
                  contentPadding: const EdgeInsets.only(bottom: 10, left: 10),
                ),
              ));
  }

  Widget _datePicker(
      {required TextEditingController controller,
      required String error,
      required String hint,
      required DateTime startDate,
        Function(String)? onChangeMethod,
      required BuildContext context}) {
    return Container(
      margin: EdgeInsets.only(left: 7, right: 7),
      height: 60,
      decoration: BoxDecoration(
        color: ColorRes.lightGrey2,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        readOnly: true,
        controller: controller,
        onTap: () async {
          DateTime? pickedDate = await showDatePicker(
              builder: (context, child) {
                return Theme(
                    data: Theme.of(context).copyWith(
                        colorScheme: ColorScheme.light(primary: ColorRes.blue)),
                    child: child!);
              },
              context: context,
              helpText: hint,
              initialDate: startDate,
              initialEntryMode: DatePickerEntryMode.calendarOnly,
              firstDate: DateTime(1800),
              lastDate: DateTime.now());
          if (pickedDate != null) {
            print(pickedDate);
            String formattedDate = DateFormat('dd.MM.yyyy').format(pickedDate);
            // controller.text = formattedDate.toString();
            onChangeMethod!(formattedDate);
          }
        },
        keyboardType: TextInputType.none,
        style: const TextStyle(
          color: ColorRes.darkGrey6,
          fontSize: 15,
        ),
        decoration: InputDecoration(
          labelText: hint.replaceAll("Enter ", ""),
          icon: Padding(
            padding: EdgeInsets.only(left: 10),
            child: Icon(
              Icons.calendar_month,
              color: Colors.blueAccent,
            ),
          ),
          hintText: error == '' ? hint : error,
          hintStyle: TextStyle(
            color: error == "" ? ColorRes.darkGrey6 : ColorRes.red,
            fontSize: 14,
          ),
          border: OutlineInputBorder(
              borderSide: BorderSide(
                  color: error == "" ? ColorRes.light_blue5 : ColorRes.red,
                  width: 1)),
          contentPadding: const EdgeInsets.only(bottom: 10, left: 10),
        ),
      ),
    );
  }

  Widget _yearPicker(
      {required TextEditingController controller,
      required String error,
      required String hint,
      required DateTime startDate,
        required Function(String) onChangeMethod,
        required BuildContext context}) {
    return Container(
      margin: EdgeInsets.only(left: 7, right: 7),
      height: 60,
      decoration: BoxDecoration(
        color: ColorRes.lightGrey2,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        readOnly: true,
        controller: controller,
        onTap: () async {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                    title: const Text("Year"),
                    content: Container(
                      width: 300,
                      height: 300,
                      child: YearPicker(
                        initialDate: startDate,
                        firstDate: DateTime(1800),
                        lastDate: DateTime.now(),
                        selectedDate: DateTime(DateTime.now().year - 3),
                        onChanged: (DateTime value) {
                          print(value);
                          String formattedDate =
                              DateFormat('yyyy').format(value);
                          controller.text = formattedDate.toString();
                          onChangeMethod(formattedDate);
                          if (hint == AppRes.periodTo ||
                              hint == AppRes.periodFrom) {
                            if (fromDate.text.toString().isNotEmpty &&
                                toDate.text.toString().isNotEmpty) {
                              experienceYears.text =
                                  (int.parse(toDate.text.toString()) -
                                          int.parse(fromDate.text.toString()))
                                      .toString();
                              experienceMonths.text =
                                  (int.parse(experienceYears.text.toString()) *
                                          12)
                                      .toString();
                            }
                          } else if (hint == AppRes.financialYear) {
                            controller.text =
                                '${controller.text.toString()}-${DateFormat('yyyy').format(DateTime(DateTime(int.parse(formattedDate)).year + 1))}';
                          }
                              Navigator.pop(context);
                        },
                      ),
                    ));
              });
        },
        keyboardType: TextInputType.none,
        style: const TextStyle(
          color: ColorRes.darkGrey6,
          fontSize: 15,
        ),
        decoration: InputDecoration(
          labelText: hint.replaceAll("Enter ", ""),
          icon: Padding(
            padding: EdgeInsets.only(left: 10),
            child: Icon(
              Icons.calendar_month,
              color: Colors.blueAccent,
            ),
          ),
          hintText: error == '' ? hint : error,
          hintStyle: TextStyle(
            color: error == "" ? ColorRes.darkGrey6 : ColorRes.red,
            fontSize: 14,
          ),
          border: OutlineInputBorder(
              borderSide: BorderSide(
                  color: error == "" ? ColorRes.light_blue5 : ColorRes.red,
                  width: 1)),
          contentPadding: const EdgeInsets.only(bottom: 10, left: 10),
        ),
      ),
    );
  }

  Widget _dropDownField(
      {required TextEditingController controller,
      required String error,
        required FocusNode focusNode,
      required String hint,
      required List<String> dropList,
      required Function(String) onChangeMethod,
      required BuildContext context}) {
    print("_dropDownField: controller=${controller.text},error=$error,hint=$hint,list=$dropList");
    return Container(
      margin: EdgeInsets.only(left: 7, right: 7),
      height: 60,
      decoration: BoxDecoration(
        color: ColorRes.lightGrey2,
        borderRadius: BorderRadius.circular(5),
      ),
      child: TextField(
        focusNode: focusNode,
        readOnly: true,
        onTap: () => {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return DropDown(
                selectValue: controller.text,
                type: hint,
                listselectValue: dropList,
                onChange: onChangeMethod,
              );
            },
          ),
        },
        controller: controller,
        keyboardType: TextInputType.none,
        textCapitalization: TextCapitalization.words,
        style: TextStyle(
          color: ColorRes.darkGrey6,
          fontSize: 18,
        ),
        decoration: InputDecoration(
          suffixIcon: AppRes.dropicon,
          hintText: error == "" ? hint : error,
          hintStyle: TextStyle(
            color: error == "" ? ColorRes.darkGrey6 : ColorRes.red,
          ),
          labelText: hint.replaceAll("Enter ", ""),
          border: OutlineInputBorder(
              borderSide: BorderSide(
                  color: error == "" ? ColorRes.light_blue5 : ColorRes.red,
                  width: 1)),
          contentPadding: const EdgeInsets.only(bottom: 10, left: 10),
        ),
      ),
    );
  }

  heading(String title) {
    return Align(
        alignment: Alignment.topLeft,
        child: Text(
          title,
          style: TextStyle(color: ColorRes.black2, fontSize: 20),
        ));
  }
}
