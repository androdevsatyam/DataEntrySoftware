import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:iovuserform/datasets/state_city_model.dart';
import 'package:iovuserform/utils/drop_down.dart';

import '../../utils/appres.dart';
import '../../utils/color_res.dart';

class FormFields extends StatelessWidget {
  final VoidCallback onTextFieldTap;
  final Function(String value) onApplicantTypeChange,
      onApplicationModeChange,
      onGenderChange,
      onCityChange,
      onStateChange,
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
      onproposedMeetingDateChange;

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
      position,
      experienceMonths,
      experienceYears,
      membershipClass,
      assetClass,
      annualLM,
      acknowledgementNo,
      membershipStatus,
      approvedbyMem,
      remarks;

  final FocusNode membershipNoFocusNode,
      nameFocusNode,
      fatherNameFocusNode,
      addressFocusNode,
      pinCodeFocusNode,
      mobileNoFocusNode,
      eMailFocusNode,
      invoiceNoFocusNode,
      feesFocusNode,
      panFocusNode,
      aadharCardFocusNode,
      diplomaDegreeFocusNode,
      diplomaPassingYearFocusNode,
      diplomaUniversityNameFocusNode,
      diplomaUniversityApprovedFocusNode,
      graduateDegreeFocusNode,
      graduatePassingYearFocusNode,
      graduateUniversityNameFocusNode,
      graduateUniversityApprovedFocusNode,
      postGraduatePassingYearFocusNode,
      postGraduateDegreeFocusNode,
      postGraduateUniversityNameFocusNode,
      positionFocusNode,
      postGraduateUniversityApprovedFocusNode,
      experienceMonthsFocusNode,
      experienceYearsFocusNode,
      membershipClassFocusNode,
      assetClassFocusNode,
      annualLMFocusNode,
      acknowledgementNoFocusNode,
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
      fromDate,
      toDate,
      regOtherRV,
      proposedMeetingDate;

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
      required this.proposedMeetingDate,
      required this.onTextFieldTap,
      required this.onApplicantTypeChange,
      required this.onApplicationModeChange,
      required this.onGenderChange,
      required this.onCityChange,
      required this.onStateChange,
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
      required this.onproposedMeetingDateChange,
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
      required this.position,
      required this.experienceMonths,
      required this.experienceYears,
      required this.membershipClass,
      required this.assetClass,
      required this.annualLM,
      required this.acknowledgementNo,
      required this.membershipStatus,
      required this.approvedbyMem,
      required this.remarks,
      required this.membershipNoFocusNode,
      required this.nameFocusNode,
      required this.fatherNameFocusNode,
      required this.addressFocusNode,
      required this.pinCodeFocusNode,
      required this.mobileNoFocusNode,
      required this.eMailFocusNode,
      required this.invoiceNoFocusNode,
      required this.feesFocusNode,
      required this.panFocusNode,
      required this.aadharCardFocusNode,
      required this.diplomaDegreeFocusNode,
      required this.diplomaPassingYearFocusNode,
      required this.diplomaUniversityNameFocusNode,
      required this.diplomaUniversityApprovedFocusNode,
      required this.graduateDegreeFocusNode,
      required this.graduatePassingYearFocusNode,
      required this.graduateUniversityNameFocusNode,
      required this.graduateUniversityApprovedFocusNode,
      required this.postGraduatePassingYearFocusNode,
      required this.postGraduateDegreeFocusNode,
      required this.postGraduateUniversityNameFocusNode,
      required this.positionFocusNode,
      required this.postGraduateUniversityApprovedFocusNode,
      required this.experienceMonthsFocusNode,
      required this.experienceYearsFocusNode,
      required this.membershipClassFocusNode,
      required this.assetClassFocusNode,
      required this.annualLMFocusNode,
      required this.acknowledgementNoFocusNode,
      required this.membershipStatusFocusNode,
      required this.approvedbyMemFocusNode,
      required this.remarksFocusNode,
      required this.cityList,
      required this.stateList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Expanded(
          child: Column(
        children: [
          Row(
            children: [
              /* -----APPLICATION TYPE.-----*/
              Expanded(
                  child: _dropDownField(
                      controller: TextEditingController(text: applicantType),
                      hint: AppRes.applicationTypeHint,
                      error: errorMsg,
                      dropList: AppRes.applicationList,
                      onChangeMethod: onApplicantTypeChange,
                      context: context)),
              /* -----MEMBERSHIP NO.-----*/
              Expanded(
                  child: _textField(
                      controller: membershipNo,
                      focusNode: membershipNoFocusNode,
                      error: errorMsg,
                      hint: AppRes.memberShipHint,
                      inputFormaters: FilteringTextInputFormatter.allow(
                          RegExp("[a-z0-9A-Z/]")),
                      keyBoardType: TextInputType.name)),
              /*//  -----RECEIVED DATE----*/
              Expanded(
                  child: _datePicker(
                      controller: receivedDate,
                      // focusNode: receivedDateFocusNode,
                      error: errorMsg,
                      startDate: DateTime.now(),
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
                      hint: AppRes.modeHint,
                      error: errorMsg,
                      dropList: AppRes.applicationModeList,
                      onChangeMethod: onApplicationModeChange,
                      context: context)),
              //-----NAME AS PER DOCUMENTS-----
              Expanded(
                  child: _textField(
                      controller: name,
                      focusNode: nameFocusNode,
                      error: errorMsg,
                      hint: AppRes.nameHint,
                      inputFormaters:
                          FilteringTextInputFormatter.allow(RegExp("[a-zA-Z]")),
                      keyBoardType: TextInputType.name)),
              //-----FATHER NAME----
              Expanded(
                  child: _textField(
                      controller: fatherName,
                      focusNode: fatherNameFocusNode,
                      error: errorMsg,
                      hint: AppRes.fatherNameHint,
                      inputFormaters:
                          FilteringTextInputFormatter.allow(RegExp("[a-zA-Z]")),
                      keyBoardType: TextInputType.name)),
              //-----GENDER-----
              Expanded(
                  child: _dropDownField(
                      controller: TextEditingController(text: gender),
                      hint: AppRes.genderHint,
                      error: errorMsg,
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
                      error: errorMsg,
                      hint: AppRes.addressHint,
                      inputFormaters: FilteringTextInputFormatter.allow(
                          RegExp("[a-zA-Z0-9,/]")),
                      keyBoardType: TextInputType.name)),
              //-----STATE-----
              Expanded(
                  child: _dropDownField(
                      controller: TextEditingController(text: state),
                      hint: AppRes.stateHint,
                      error: errorMsg,
                      dropList: stateList,
                      onChangeMethod: onStateChange,
                      context: context)),
              //-----CITY-----
              Expanded(
                  child: _dropDownField(
                      controller: TextEditingController(text: city),
                      hint: AppRes.cityHint,
                      error: errorMsg,
                      dropList: cityList,
                      onChangeMethod: onCityChange,
                      context: context)),
              //-----PINCODE----
              Expanded(
                  child: _textField(
                      controller: pinCode,
                      focusNode: pinCodeFocusNode,
                      error: errorMsg,
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
                      error: errorMsg,
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
                      error: errorMsg,
                      hint: AppRes.emailHint,
                      maxlength: 250,
                      keyBoardType: TextInputType.emailAddress)),
              //-----INVOICE NO----
              Expanded(
                  child: _textField(
                      controller: invoiceNo,
                      focusNode: invoiceNoFocusNode,
                      error: errorMsg,
                      hint: AppRes.invoiceHint,
                      maxlength: 6,
                      inputFormaters:
                          FilteringTextInputFormatter.allow(RegExp("[0-9]")),
                      keyBoardType: TextInputType.number)),
              //-----INVOICE DATE----
              Expanded(
                  child: _datePicker(
                      controller: TextEditingController(text: invoiceDate),
                      error: errorMsg,
                      startDate: DateTime.now(),
                      hint: AppRes.invoiceDateHint,
                      context: context)),
              //-----FEES----
              Expanded(
                  child: _textField(
                      controller: fees,
                      focusNode: feesFocusNode,
                      error: errorMsg,
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
                      error: errorMsg,
                      startDate: DateTime((DateTime.now().year - 1)),
                      hint: AppRes.dobHint,
                      context: context)),
              //-----AADHAAR NO----
              Expanded(
                  child: _textField(
                      controller: aadharCard,
                      focusNode: aadharCardFocusNode,
                      error: errorMsg,
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
                      error: errorMsg,
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
                            error: errorMsg,
                            hint: AppRes.diplomaDegree,
                            inputFormaters: FilteringTextInputFormatter.allow(
                                RegExp("[A-Za-z]")),
                            keyBoardType: TextInputType.name)),
                    //-----MARKSHEET.-----
                    Expanded(
                        child: _dropDownField(
                            controller:
                                TextEditingController(text: diplomaMarksheet),
                            error: errorMsg,
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
                            error: errorMsg,
                            hint: AppRes.universityNameHint,
                            inputFormaters: FilteringTextInputFormatter.allow(
                                RegExp("[A-Za-z]")),
                            keyBoardType: TextInputType.name)),
                    //-----UNIVERSITY LOCATION.-----
                    Expanded(
                        child: _dropDownField(
                            controller: TextEditingController(
                                text: diplomaUniversityLocation),
                            error: errorMsg,
                            hint: AppRes.universityLocationHint,
                            dropList: stateList,
                            onChangeMethod: ondiplomaUniversityLocationChange,
                            context: context)),
                    //-----UNIVERSITY Approved.-----
                    Expanded(
                        child: _textField(
                            controller: diplomaUniversityApproved,
                            focusNode: diplomaUniversityApprovedFocusNode,
                            error: errorMsg,
                            hint: AppRes.universityApprovedHint,
                            inputFormaters: FilteringTextInputFormatter.allow(
                                RegExp("[A-Za-z]")),
                            keyBoardType: TextInputType.name)),
                    //-----PASSING YEAR----
                    Expanded(
                        child: _datePicker(
                            controller: diplomaPassingYear,
                            error: errorMsg,
                            startDate: DateTime((DateTime.now().year - 3)),
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
                            error: errorMsg,
                            hint: AppRes.graduateDegree,
                            inputFormaters: FilteringTextInputFormatter.allow(
                                RegExp("[A-Za-z]")),
                            keyBoardType: TextInputType.name)),
                    // -----MARKSHEET.-----
                    Expanded(
                        child: _dropDownField(
                            controller:
                                TextEditingController(text: graduateMarksheet),
                            error: errorMsg,
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
                            error: errorMsg,
                            hint: AppRes.universityNameHint,
                            inputFormaters: FilteringTextInputFormatter.allow(
                                RegExp("[A-Za-z]")),
                            keyBoardType: TextInputType.name)),
                    //-----UNIVERSITY LOCATION.-----
                    Expanded(
                        child: _dropDownField(
                            controller: TextEditingController(
                                text: graduateUniversityLocation),
                            error: errorMsg,
                            hint: AppRes.universityLocationHint,
                            dropList: stateList,
                            onChangeMethod: ongraduateUniversityLocationChange,
                            context: context)),
                    //-----UNIVERSITY Approved.-----
                    Expanded(
                        child: _textField(
                            controller: graduateUniversityApproved,
                            focusNode: graduateUniversityApprovedFocusNode,
                            error: errorMsg,
                            hint: AppRes.universityApprovedHint,
                            inputFormaters: FilteringTextInputFormatter.allow(
                                RegExp("[A-Za-z]")),
                            keyBoardType: TextInputType.name)),
                    //-----PASSING YEAR----
                    Expanded(
                        child: _datePicker(
                            controller: graduatePassingYear,
                            error: errorMsg,
                            startDate: DateTime((DateTime.now().year - 3)),
                            hint: AppRes.passingYearHint,
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
                            error: errorMsg,
                            hint: AppRes.diplomaDegree,
                            inputFormaters: FilteringTextInputFormatter.allow(
                                RegExp("[A-Za-z]")),
                            keyBoardType: TextInputType.name)),
                    //-----MARKSHEET.-----
                    Expanded(
                        child: _dropDownField(
                            controller: TextEditingController(
                                text: postGraduateMarksheet),
                            error: errorMsg,
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
                            error: errorMsg,
                            hint: AppRes.universityNameHint,
                            inputFormaters: FilteringTextInputFormatter.allow(
                                RegExp("[A-Za-z]")),
                            keyBoardType: TextInputType.name)),
//-----UNIVERSITY LOCATION.-----
                    Expanded(
                        child: _dropDownField(
                            controller: TextEditingController(
                                text: postGraduateUniversityLocation),
                            error: errorMsg,
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
                            error: errorMsg,
                            hint: AppRes.universityApprovedHint,
                            inputFormaters: FilteringTextInputFormatter.allow(
                                RegExp("[A-Za-z]")),
                            keyBoardType: TextInputType.name)),
/*-----PASSING YEAR----*/
                    Expanded(
                        child: _datePicker(
                            controller: postGraduatePassingYear,
                            error: errorMsg,
                            startDate: DateTime((DateTime.now().year - 3)),
                            hint: AppRes.passingYearHint,
                            context: context)),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 40,)
        ],
      )),
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
            controller.text = formattedDate.toString();
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

  Widget _dropDownField(
      {required TextEditingController controller,
      required String error,
      required String hint,
      required List<String> dropList,
      required Function(String) onChangeMethod,
      required BuildContext context}) {
    return Container(
      margin: EdgeInsets.only(left: 7, right: 7),
      height: 60,
      decoration: BoxDecoration(
        color: ColorRes.lightGrey2,
        borderRadius: BorderRadius.circular(5),
      ),
      child: TextField(
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
          hintText: error == '' ? hint : error,
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
