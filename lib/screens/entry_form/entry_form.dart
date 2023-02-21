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
              Expanded(child:
              Padding(
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
                      ackEmailSent: model.ackEmailSent,
                      membershipStatus: model.membershipStatus,
                      proposedMeetingDate: model.proposedMeetingDate,
                      financialYear: model.financialYear,
                      onTextFieldTap: model.onTextFieldTap,
                      onFormSubmit: model.onFormSubmit,
                      onApplicantTypeChange: model.onApplicantTypeChange,
                      onApplicationModeChange: model.onApplicationModeChange,
                      onGenderChange: model.onGenderChange,
                      onCityChange: model.onCityChange,
                      onStateChange: model.onStateChange,
                      onReceiveDateChange: model.onReceiveDateChange,
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
                      onEmailChange: model.onEmailChange,
                      onMemberShipChange: model.onMemberShipChange,
                      onproposedMeetingDateChange:model.onproposedMeetingDateChange,
                      onFinancialYearChange:model.onFinancialYearChange,
                      onDOBChange:model.onDOBChange,
                      onDiplomaPassingYearChange:model.onDiplomaPassingYearChange,
                      onGraduatePassingYearChange:model.onGraduatePassingYearChange,
                      onPostGraduatePassingYearChange:model.onPostGraduatePassingYearChange,
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
                      designation: model.designation,
                      experienceMonths: model.experienceMonths,
                      experienceYears: model.experienceYears,
                      membershipClass: model.membershipClass,
                      assetClass: model.assetClass,
                      annualLM: model.annualLM,
                      acknowledgementNo: model.acknowledgementNo,
                      approvedbyMem: model.approvedbyMem,
                      remarks: model.remarks,
                      applicantTypeFocusNode: model.applicantTypeFocusNode,
                      membershipNoFocusNode: model.membershipNoFocusNode,
                      applicationFocusNode: model.applicationFocusNode,
                      nameFocusNode: model.nameFocusNode,
                      fatherNameFocusNode: model.fatherNameFocusNode,
                      genderFocusNode: model.genderFocusNode,
                      addressFocusNode: model.addressFocusNode,
                      stateFocusNode: model.stateFocusNode,
                      cityFocusNode: model.cityFocusNode,
                      pinCodeFocusNode: model.pinCodeFocusNode,
                      mobileNoFocusNode: model.mobileNoFocusNode,
                      eMailFocusNode: model.eMailFocusNode,
                      invoiceNoFocusNode: model.invoiceNoFocusNode,
                      feesFocusNode: model.feesFocusNode,
                      panFocusNode: model.panFocusNode,
                      aadharCardFocusNode: model.aadharCardFocusNode,
                      diplomaDegreeFocusNode:model.diplomaDegreeFocusNode,
                      diplomaMarksheetFocusNode:model.diplomaMarksheetFocusNode,
                      diplomaPassingYearFocusNode:model.diplomaPassingYearFocusNode,
                      diplomaUniversityNameFocusNode:model.diplomaUniversityNameFocusNode,
                      diplomaUniversityLocationFocusNode:model.diplomaUniversityLocationFocusNode,
                      diplomaUniversityApprovedFocusNode:model.diplomaUniversityApprovedFocusNode,
                      graduateDegreeFocusNode:model.graduateDegreeFocusNode,
                      graduateMarksheetFocusNode:model.graduateMarksheetFocusNode,
                      graduatePassingYearFocusNode:model.graduatePassingYearFocusNode,
                      graduateUniversityNameFocusNode:model.graduateUniversityNameFocusNode,
                      graduateUniversityLocationFocusNode:model.graduateUniversityLocationFocusNode,
                      graduateUniversityApprovedFocusNode:model.graduateUniversityApprovedFocusNode,
                      postGraduatePassingYearFocusNode:model.postGraduatePassingYearFocusNode,
                      postGraduateDegreeFocusNode:model.postGraduateDegreeFocusNode,
                      postGraduateMarksheetFocusNode:model.postGraduateMarksheetFocusNode,
                      postGraduateUniversityNameFocusNode:model.postGraduateUniversityNameFocusNode,
                      postGraduateUniversityLocationFocusNode:model.postGraduateUniversityLocationFocusNode,
                      professionalFocusNode:model.professionalFocusNode,
                      designationFocusNode:model.designationFocusNode,
                      postGraduateUniversityApprovedFocusNode:model.postGraduateUniversityApprovedFocusNode,
                      experienceMonthsFocusNode:model.experienceMonthsFocusNode,
                      experienceYearsFocusNode:model.experienceYearsFocusNode,
                      membershipClassFocusNode:model.membershipClassFocusNode,
                      regOtherRVFocusNode:model.regOtherRVFocusNode,
                      assetClassFocusNode:model.assetClassFocusNode,
                      annualLMFocusNode:model.annualLMFocusNode,
                      acknowledgementNoFocusNode:model.acknowledgementNoFocusNode,
                      ackEmailSentFocusNode:model.ackEmailSentFocusNode,
                      membershipStatusFocusNode:model.membershipStatusFocusNode,
                      approvedbyMemFocusNode:model.approvedbyMemFocusNode,
                      remarksFocusNode:model.remarksFocusNode,
                      cityList: model.cityList,
                      stateList: model.stateList)),
              ),
              Align(
                alignment: Alignment.center,
                child: ElevatedButton(

                    onPressed: model.onFormSubmit,
                    child: const Padding(
                      padding: EdgeInsets.only(
                          left: 60,
                          right: 60,
                          top: 10,
                          bottom: 10),
                      child: Text(
                        "Submit Form",
                        style: TextStyle(fontSize: 22),
                      ),
                    )),
              ),
              const SizedBox(
                height: 25,
              ),
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
