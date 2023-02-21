import 'package:flutter/material.dart';
import 'color_res.dart';

class AppRes{
  static const applicationTypeHint="Application Type";
  static const memberShipHint="Enter Membership No.";
  static const receivedDateHint="Received Date";
  static const modeHint="Application Mode";
  static const nameHint="Enter Name as per documents";
  static const fatherNameHint="Enter Father's Name";
  static const genderHint="Gender";
  static const addressHint="Enter Address";
  static const cityHint="Enter City";
  static const stateHint="Enter State";
  static const pincodeHint="Enter PinCode";
  static const mobileHint="Enter Mobile No";
  static const emailHint="Enter Email-Id";
  static const invoiceHint="Enter Invoice No.";
  static const invoiceDateHint="Enter Invoice Date";
  static const feesHint="Enter Fees";
  static const dobHint="Date Of Birth";
  static const aadhaarHint="Enter Aadhaar No";
  static const panHint="Enter PAN No";
  static const educationQualification="Educational Qualification";
  static const carrierQualification="Carrier Experience";
  static const diplomaDegree="Diploma Degree";
  static const graduateDegree="Graduate Degree";
  static const postGraduateDegree="Post Graduate Degree";
  static const universityNameHint="Enter University Name";
  static const universityLocationHint="Enter University Location";
  static const universityApprovedHint="Enter University Approved By";
  static const passingYearHint="Enter Passing Year";
  static const haveMarkSheetHint="Have MarkSheet";

  static const employementStatus="Employment Status";
  static const designation="Enter Designation";
  static const periodFrom="Period From";
  static const periodTo="Period To";
  static const experienceInYears="Experience Years";
  static const experienceInMonths="Experience Months";

  static const memberShipInfo="Membership Info";
  static const membershipClass="Enter Class of Membership";
  static const assetClass="Class of Asset";
  static const annualLM="Annual LM";
  static const otherRV="RV Join Before";
  static const ackNo="Ack. No";
  static const membershipStatus="Membership Status";
  static const emailSent="Ack. Email Sent";
  static const meetingDate="Proposed Meeting Date";
  static const approvedBy="ApprovedBy";
  static const remarks="Remarks";
  static const financialYear="Financial Year";

  /*----- DropDown Data -----------*/
  static const clearSelection="Clear";
  static const userNew="New Membership";
  static const userOld="Member";
  static const modeOffline="Offline";
  static const modeOnline="Online";
  static const genderMale="Male";
  static const genderFemale="Fe Male";
  static const genderTrans="TransGender";
  static const yes="Yes";
  static const no="No";
  static const employer="Employer";
  static const self_employed="Self-Employed";
  static const approved="Approved";
  static const pending="Pending";
  static const submitted="Submitted";


  static const String panValidation = "[A-Z]{5}[0-9]{4}[A-Z]{1}";
  static const String emailValidation = r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";

  static const List<String> applicationList=[
    clearSelection,
    userNew,
    userOld,
  ];

  static const List<String> applicationModeList=[
    clearSelection,
    modeOffline,
    modeOnline,
  ];

  static const List<String> genderList=[
    clearSelection,
    genderMale,
    genderFemale,
    genderTrans,
  ];

  static const List<String> markSheetList=[
    clearSelection,
    yes,
    no
  ];

  static const List<String> employmentStatusList=[
    clearSelection,
    employer,
    self_employed
  ];

  static const List<String> memberShipList=[
    clearSelection,
    submitted,
    pending,
    approved
  ];

  static const dropicon=Icon(Icons.arrow_drop_down_circle_outlined,color: ColorRes.blue,);

}
