// // class CallLogModel{
// //   final String number;
// //   final String name;
// //   final int duration;

// // }
// class CallLogModel {
//   String? number;
//   List<Logs>? logs;

//   CallLogModel({this.number, this.logs});

//   CallLogModel.fromJson(Map<String, dynamic> json) {
//     number = json['number'];
//     if (json['logs'] != null) {
//       logs = <Logs>[];
//       json['logs'].forEach((v) {
//         logs!.add(new Logs.fromJson(v));
//       });
//     }
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['number'] = this.number;
//     if (this.logs != null) {
//       data['logs'] = this.logs!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }

// class Logs {
//   String? callType;
//   String? createdDate;
//   String? duration;
//   String? name;

//   Logs({this.callType, this.createdDate, this.duration, this.name});

//   Logs.fromJson(Map<String, dynamic> json) {
//     callType = json['call_type'];
//     createdDate = json['created_date'];
//     duration = json['duration'];
//     name = json['name'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['call_type'] = this.callType;
//     data['created_date'] = this.createdDate;
//     data['duration'] = this.duration;
//     data['name'] = this.name;
//     return data;
//   }
// }
