import 'package:flutter/cupertino.dart';
import 'package:gsheets/gsheets.dart';

import '../datasets/form_data_set.dart';

class SheetApi {
  static const crediantials = r'''
  {
  "type": "service_account",
  "project_id": "iovforms",
  "private_key_id": "96c8ffd17fe42a28d8db36c2685eed84b23ae7c8",
  "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvwIBADANBgkqhkiG9w0BAQEFAASCBKkwggSlAgEAAoIBAQDX/fvI00cG/OmJ\n7aCZFdbF6mOPQIp+m5nTpHybcBmW3U8ucS+h5+14/lWwBEuyYw35a4ktLfiWAuII\nh/XrJprXoZZpNnbERdTzLPaGV2PDVDEnrPfWAXA8xVcopq99Lp+gggbTZ5lZvZEt\ns1YTZ/dTx0ZJPvdyQODO6nIyeImDkHJ3Zw5oEptCz3YLbZs+Dy6raCDdrfV3KQL6\nmD0PPfrpqodvN19RljBg5cX3bR07qGaSXK8r7tG7Z/YH3KXrcutrXiIoMzpuMyU6\namJryO7p/ISgiSbCQjgD6pnm6klnZbk5aXg44lRiinzAYrj5kEr/S40LcVcd8HBh\nnsREq4cjAgMBAAECggEABmV+UOFiOkSVfUuyagYvC5fC5gmmcFRsVvZekv3cDCSM\nBUHohAt0dBUCyvPS8rqjPc6KS/JkvmXhysM4Aa7tfqhJkN5s4FLPGSUs5yfsYOr7\n363Bfdl3Y51Wf5zcF+wgYbuoDG0GKhWxQyC1/Qd4WBylKg3O0dfhBc+vR8EGatp3\nfirV7RdqAQ3Je6OnDtK+2ArP6BGojfoV27UmzvUpc1QpBpbennQG5Vj8jo5kdx6D\nXr33NDUDSsWTsl53Uld6E4vHA1CpAJcyKSKRv+LOhIlAdKJw+ZeX5YCpLfSBp13g\nS+39oiQFctr5m/sScZNOf5wIGHnTUh/5kKFgyc9baQKBgQDukggx/8P5BPQleKi6\nAntcekrOS5/3VpM3WQB2QTeLfkMVeXDMBhLP6bxt/fO8rmj/6C0hjvJUAdrX4KUb\nvvKIxG4he1LHwzHyijAECvGv8rOszdRVlx2j1MR2B3A7x++fglWpB6oqN9ds5tgR\nShjyV2xYDCWIOD+ZW3AbcYmIeQKBgQDnxau0Hvf7w29kWKuYNMQ1A7g58UeHmGv1\n0r9B1UL9i5h3SoleB6b9AX+Thc174D0o/SbgcmtVPL7C1xCgHe5QiNbS0744r5hY\nvhHCDuZzC0awk0DF0g5VNdMPzvyItExEFNJmSm+vB8yn1Cz4dLybbmcPpV8MeuYl\ntjwwrltdewKBgQDOuNNJH+rcWKKF5auuon/qfj1bzMPsOqSODR0NWy2aPeo7LWPE\nJm8eodaZKLiPAkIRnUmeDpOEn6bV8N6g0DCwuiUD9iyg1E7vbzZ0Cleqso9maWRY\nVf1k/PTPoVprMrA8c19ufCnDM2gEAXOwZ5h+RaqoEL5k7viNFmJqJVObYQKBgQCb\nZOjuZyUU47+3o8vIzPgQI2JNVvwCaatYsegRl47Gt+WNdagMJ01KrMqAemF/AKWA\n6do6+fwEtimgMNmwwOCblmOSDu2my/R061q0pZDU6WaH1PLEr0V01BWir8CZV2ka\n7Gr0skuXKr+IdrWAD6S1AZyP3OyRTYUpG7nXWc9gKQKBgQDcdP5nx6Z7cqo7GODl\npDOQorQegMOu6xO4xE/tAqD0RxKRK/MJRSJi09Bx36CuFRgLFWpKf7Kb/nvjb5PB\ntBqA8ybdQPdq1xlSVl8RGCqO0Dxm8pbUcCpQ3i1QCaIEWxby/jISTpUqguRz8chn\nOSp4seEn7gKpuCc684I7ZchIqA==\n-----END PRIVATE KEY-----\n",
  "client_email": "iovforms@iovforms.iam.gserviceaccount.com",
  "client_id": "113175736628274743791",
  "auth_uri": "https://accounts.google.com/o/oauth2/auth",
  "token_uri": "https://oauth2.googleapis.com/token",
  "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
  "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/iovforms%40iovforms.iam.gserviceaccount.com"
}
  ''';
  static final spreadsheetId = '1LuY1ZMBOl3W-x4Z4rj08O2gcMGwuGAWzyKMC12PgeDw';
  static final gsheets = GSheets(crediantials);
  static Worksheet? formSheet;

  static Future init() async {
    try {
      final spreadSheet = await gsheets.spreadsheet(spreadsheetId);
      formSheet = await _getWorkSheet(spreadSheet, title: "Forms");

      final headings = FormDataSet.getFields();
      formSheet!.values.insertRow(1, headings);
    }catch(e){
      print("init Error=$e");
    }
  }

  static Future<Worksheet> _getWorkSheet(Spreadsheet spreadsheet,
      {required String title}) async {
    try {
      return await spreadsheet.addWorksheet(title);
    }catch(e){
      return spreadsheet.worksheetByTitle(title)!;
    }
  }


  static Future insertData(List<Map<String,dynamic>> row) async{
    if(formSheet==null) return;
    return formSheet!.values.map.appendRows(row);
  }
}
