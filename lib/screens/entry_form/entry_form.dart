import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:iovuserform/screens/entry_form/entry_form_viewmodel.dart';
import 'package:stacked/stacked.dart';
import '../../utils/appres.dart';
import '../../utils/color_res.dart';
import '../../widgets/top_bar.dart';
import 'form_fields.dart';

class EntryForm extends StatelessWidget {
  const EntryForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => EntryFormViewModel(),
        onViewModelReady: (model) {
          model.init();
        },
        builder: (context, model, chile) {
          return Scaffold(
              body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TopBar(screen: "Form", title: "Fill Details"),
              const SizedBox(
                height: 10,
              ),
              Expanded(child: Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: FormFields(
                      errorMsg: model.errorMsg,
                      applicantType: model.applicantType,
                      applicationMode: model.applicationMode,
                      gender: model.gender,
                      city: model.city,
                      state: model.state,
                      invoiceDate: model.invoiceDate,
                      diplomaUniversityLocation:
                      model.diplomaUniversityLocation,
                      diplomaMarksheet: model.diplomaMarksheet,
                      graduateUniversityLocation:
                      model.graduateUniversityLocation,
                      graduateMarksheet: model.graduateMarksheet,
                      postGraduateUniversityLocation:
                      model.postGraduateUniversityLocation,
                      postGraduateMarksheet: model.postGraduateMarksheet,
                      professionalStatus: model.professionalStatus,
                      fromDate: model.fromDate,
                      toDate: model.toDate,
                      regOtherRV: model.regOtherRV,
                      proposedMeetingDate: model.proposedMeetingDate,
                      onTextFieldTap: model.onTextFieldTap,
                      onApplicantTypeChange: model.onApplicantTypeChange,
                      onApplicationModeChange: model.onApplicationModeChange,
                      onGenderChange: model.onGenderChange,
                      onCityChange: model.onCityChange,
                      onStateChange: model.onStateChange,
                      onInvoiceDateChange: model.onInvoiceDateChange,
                      ondiplomaUniversityLocationChange:
                      model.ondiplomaUniversityLocationChange,
                      ondiplomaMarksheetChange: model.ondiplomaMarksheetChange,
                      ongraduateUniversityLocationChange:
                      model.ongraduateUniversityLocationChange,
                      ongraduateMarksheetChange:
                      model.ongraduateMarksheetChange,
                      onpostGraduateUniversityLocationChange:
                      model.onpostGraduateUniversityLocationChange,
                      onpostGraduateMarksheetChange:
                      model.onpostGraduateMarksheetChange,
                      onprofessionalStatusChange:
                      model.onprofessionalStatusChange,
                      onfromDateChange: model.onfromDateChange,
                      ontoDateChange: model.ontoDateChange,
                      onregOtherRVChange: model.onregOtherRVChange,
                      onproposedMeetingDateChange:
                      model.onproposedMeetingDateChange,
                      membershipNo: model.membershipNo,
                      name: model.name,
                      dob: model.dob,
                      receivedDate: model.receivedDate,
                      fatherName: model.fatherName,
                      address: model.address,
                      pinCode: model.pinCode,
                      mobileNo: model.mobileNo,
                      eMail: model.eMail,
                      invoiceNo: model.invoiceNo,
                      fees: model.fees,
                      pan: model.pan,
                      aadharCard: model.aadharCard,
                      diplomaDegree: model.diplomaDegree,
                      diplomaPassingYear: model.diplomaPassingYear,
                      diplomaUniversityName: model.diplomaUniversityName,
                      diplomaUniversityApproved:
                      model.diplomaUniversityApproved,
                      graduateDegree: model.graduateDegree,
                      graduatePassingYear: model.graduatePassingYear,
                      graduateUniversityName: model.graduateUniversityName,
                      graduateUniversityApproved:
                      model.graduateUniversityApproved,
                      postGraduatePassingYear: model.postGraduatePassingYear,
                      postGraduateDegree: model.postGraduateDegree,
                      postGraduateUniversityName:
                      model.postGraduateUniversityName,
                      postGraduateUniversityApproved:
                      model.postGraduateUniversityApproved,
                      position: model.position,
                      experienceMonths: model.experienceMonths,
                      experienceYears: model.experienceYears,
                      membershipClass: model.membershipClass,
                      assetClass: model.assetClass,
                      annualLM: model.annualLM,
                      acknowledgementNo: model.acknowledgementNo,
                      membershipStatus: model.membershipStatus,
                      approvedbyMem: model.approvedbyMem,
                      remarks: model.remarks,
                      membershipNoFocusNode: model.membershipNoFocusNode,
                      nameFocusNode: model.nameFocusNode,
                      fatherNameFocusNode: model.fatherNameFocusNode,
                      addressFocusNode: model.addressFocusNode,
                      pinCodeFocusNode: model.pinCodeFocusNode,
                      mobileNoFocusNode: model.mobileNoFocusNode,
                      eMailFocusNode: model.eMailFocusNode,
                      invoiceNoFocusNode: model.invoiceNoFocusNode,
                      feesFocusNode: model.feesFocusNode,
                      panFocusNode: model.panFocusNode,
                      aadharCardFocusNode: model.aadharCardFocusNode,
                      diplomaDegreeFocusNode:model.diplomaDegreeFocusNode,
                      diplomaPassingYearFocusNode:model.diplomaPassingYearFocusNode,
                      diplomaUniversityNameFocusNode:model.diplomaUniversityNameFocusNode,
                      diplomaUniversityApprovedFocusNode:model.diplomaUniversityApprovedFocusNode,
                      graduateDegreeFocusNode:model.graduateDegreeFocusNode,
                      graduatePassingYearFocusNode:model.graduatePassingYearFocusNode,
                      graduateUniversityNameFocusNode:model.graduateUniversityNameFocusNode,
                      graduateUniversityApprovedFocusNode:model.graduateUniversityApprovedFocusNode,
                      postGraduatePassingYearFocusNode:model.postGraduatePassingYearFocusNode,
                      postGraduateDegreeFocusNode:model.postGraduateDegreeFocusNode,
                      postGraduateUniversityNameFocusNode:model.postGraduateUniversityNameFocusNode,
                      positionFocusNode:model.positionFocusNode,
                      postGraduateUniversityApprovedFocusNode:model.postGraduateUniversityApprovedFocusNode,
                      experienceMonthsFocusNode:model.experienceMonthsFocusNode,
                      experienceYearsFocusNode:model.experienceYearsFocusNode,
                      membershipClassFocusNode:model.membershipClassFocusNode,
                      assetClassFocusNode:model.assetClassFocusNode,
                      annualLMFocusNode:model.annualLMFocusNode,
                      acknowledgementNoFocusNode:model.acknowledgementNoFocusNode,
                      membershipStatusFocusNode:model.membershipStatusFocusNode,
                      approvedbyMemFocusNode:model.approvedbyMemFocusNode,
                      remarksFocusNode:model.remarksFocusNode,
                      cityList: model.cityList,
                      stateList: model.stateList)))
            ],
          ));
        });
  }

  Widget _textField(
      {required TextEditingController controller,
      required FocusNode focusNode,
      required String error,
      required String hint,
      required TextInputFormatter inputFormaters,
      int? maxlength,
      TextInputType? keyBoardType}) {
    return Container(
      margin: EdgeInsets.all(7),
      height: 40,
      decoration: BoxDecoration(
        color: ColorRes.lightGrey2,
        borderRadius: BorderRadius.circular(5),
      ),
      child: TextField(
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
                  color: error == "" ? ColorRes.light_blue5 : ColorRes.red,
                  width: 1)),
          contentPadding: const EdgeInsets.only(bottom: 10, left: 10),
        ),
      ),
    );
  }
}
