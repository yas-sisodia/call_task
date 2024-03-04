// import 'dart:convert';
// import 'package:call_log/call_log.dart';


// class CallLogController{
//  static bool getCallLogsButton = false;
// static List<Map<String, dynamic>> callLogs = [];
//  static Future<List<Map<String, dynamic>>> getCallLogs()async{
  
//   final Iterable<CallLogEntry> cLog = await CallLog.get();

// //  {
// //     "number": "10",
// //     "logs": [
// //         {
// //             "call_type": "Out",
// //             "created_date": "2024-02-29 20:53:54",
// //             "duration": "1 min 9 sec"
// //         },
// //         {
// //             "call_type": "In",
// //             "created_date": "2024-02-29 20:33:55",
// //             "duration": "0 sec"
// //         }
// //     ]
// // }

   
//    cLog.forEach((log) { 
//     callLogs.add({
//       'number' : log.number,
//       'name' : log.name,
//       'type' : log.callType,
//       'duration' : log.duration,
//     });   
//     });
//     getCallLogsButton = true;
//     return callLogs;
//   }

//   static Future<String> getCallLogsJSON() async {
//   List<Map<String, dynamic>> callLogs = await getCallLogs();
//   String jsonLogs = json.encode(callLogs);
//   return jsonLogs;
// }
  







//   // static void getCallDetails()async{
//   //   try{
//   //     final Iterable<CallLogEntry> cLog = await CallLog.get();
//   //     CallLogModel callLogModel = CallLogModel();
//   //     // callLogModel.;
//   //     // print('Queried call log entries');
//   //     // callLogModel =

//   //     // for (CallLogEntry entry in cLog) {
//   //     //   print('-------------------------------------');
//   //     //   print('F. NUMBER  : ${entry.formattedNumber}');
//   //     //   print('C.M. NUMBER: ${entry.cachedMatchedNumber}');
//   //     //   print('NUMBER     : ${entry.number}');
//   //     //   print('NAME       : ${entry.name}');
//   //     //   print('TYPE       : ${entry.callType}');
//   //     //   print('DATE       : ${DateTime.fromMillisecondsSinceEpoch(entry.timestamp!)}');
//   //     //   print('DURATION   : ${entry.duration}');
//   //     //   print('ACCOUNT ID : ${entry.phoneAccountId}');
//   //     //   print('ACCOUNT ID : ${entry.phoneAccountId}');
//   //     //   print('SIM NAME   : ${entry.simDisplayName}');
//   //     //   print('-------------------------------------');

//   //     // }
//   //   }
//   //   on PlatformException catch (e, s) {
//   //     print(e);
//   //     print(s);
//   //   }
//   // }


// }