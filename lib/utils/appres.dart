import 'package:flutter/material.dart';
import 'color_res.dart';

class AppRes{
  static const applicationTypeHint="Application Type";
  static const memberShipHint="Enter Membership No.";
  static const receivedDateHint="Application Received Date";
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
  static const diplomaDegree="Diploma Degree";
  static const graduateDegree="Graduate Degree";
  static const postGraduateDegree="Post Graduate Degree";
  static const universityNameHint="Enter University Name";
  static const universityLocationHint="Enter University Location";
  static const universityApprovedHint="Enter University Approved By";
  static const passingYearHint="Enter Passing Year";
  static const haveMarkSheetHint="Have MarkSheet";


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

  static const dropicon=Icon(Icons.arrow_drop_down_circle_outlined,color: ColorRes.blue,);

}
