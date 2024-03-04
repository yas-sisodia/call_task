import 'dart:convert';

import 'package:call_log/call_log.dart';
import 'package:call_task/call_log_model.dart';
// import 'package:call_task/call_log_controller.dart';
import 'package:flutter/material.dart';

class CallLogPage extends StatefulWidget {
  const CallLogPage({super.key});

  @override
  State<CallLogPage> createState() => _CallLogPageState();
}

class _CallLogPageState extends State<CallLogPage> {
List<Map<String, dynamic>> _callLogs = [];
// CallLogModel callLogModel = CallLogModel();

Future<void> _retrieveCallLogs() async {
    Iterable<CallLogEntry> entries = await CallLog.get();
    List<Map<String, dynamic>> callLogs = [];

    entries.forEach((log) {
      callLogs.add({
        'number': log.number,
        'name': log.name,
        'type': log.callType,
        'date': log.timestamp,
        'duration': log.duration,
      });
    });

    setState(() {
      _callLogs = callLogs;
    });
  }
  
  String secondsToMinutesSeconds(int seconds) 
        {
              int minutes = seconds ~/ 60;
              int remainingSeconds = seconds % 60;
         
            return '$minutes:${remainingSeconds.toString().padLeft(2, '0')}';
         }
  String epochToDateString(int epochMillis) {
  var dateTime = DateTime.fromMillisecondsSinceEpoch(epochMillis);
  return dateTime.toString().substring(0,10);
}

  @override
  void initState() {
    super.initState();
    _retrieveCallLogs();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Call Logs")),
      ),
      body: ListView.builder(
        itemCount: _callLogs.length,
        itemBuilder: (BuildContext context, int index) {
          final log = _callLogs[index];
          String type = '';
          if(log['type'] == "CallType.outgoing"){
            type = "Outgoing";
          }else if(log['type'] == "CallType.missed"){
            type = "Missed";
          }else{
            type = "Incoming";
          }
          return ListTile(
            title: Text(log['name'] ?? log['number']),
            subtitle: Text('Type: ${type}\nDate: ${epochToDateString(log['date'])}'),
            trailing: Text('Duration: ${secondsToMinutesSeconds(log['duration'])}'),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _retrieveCallLogs,
        child: const Icon(Icons.refresh),
      ),
    );}
  }
