import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:geocoder/geocoder.dart';
import 'package:geolocator/geolocator.dart';

class Second extends StatefulWidget {
  @override
  _SecondState createState() => _SecondState();
}

class _SecondState extends State<Second> {
  var user = FirebaseAuth.instance.currentUser;
  //final two = googleSignIn.currentUser!;

  final fb = FirebaseDatabase.instance;

  DateTime now = DateTime.now();

  var locationMessage = "";

  void mondayDayTime() {
    DateTime now = DateTime.now();
    int m = DateTime.monday;
    print(m);
    print('${now.hour}:${now.minute}:${now.second}');
  }

  void tuesdayDayTime() {
    DateTime now = DateTime.now();
    int m = DateTime.tuesday;
    print(m);
    print('${now.hour}:${now.minute}:${now.second}');
  }

  void wednesdayDayTime() {
    DateTime now = DateTime.now();
    int m = DateTime.wednesday;
    print(m);
    print('${now.hour}:${now.minute}:${now.second}');
  }

  void thursdayDayTime() {
    DateTime now = DateTime.now();
    int m = DateTime.thursday;
    print(m);
    print('${now.hour}:${now.minute}:${now.second}');
  }

  void fridayDayTime() {
    DateTime now = DateTime.now();
    int m = DateTime.friday;
    print(m);
    print('${now.hour}:${now.minute}:${now.second}');
  }

  @override
  void initState() {
    getCurrentLocation();
    super.initState();
  }

  void getCurrentLocation() async {
    var position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    var lastPosition = await Geolocator.getLastKnownPosition();
    print(lastPosition);

    var latitude = position.latitude;
    var longitude = position.longitude;
    print(latitude);
    print(longitude);

    var address = await Geocoder.local
        .findAddressesFromCoordinates(Coordinates(latitude, longitude));

    String cityName = address.first.locality;

    setState(() {
      locationMessage = "$cityName";
      print(cityName);
    });
  }

  // createAlertDialog(BuildContext context) {
  //   return showDialog(
  //       context: context,
  //       builder: (context) {
  //         return AlertDialog(
  //           title: Text('Check-In Time'),
  //           content: Container(
  //             height: MediaQuery.of(context).size.height * 0.08,
  //             child: Column(
  //               crossAxisAlignment: CrossAxisAlignment.start,
  //               children: [
  //                 Row(
  //                   children: [
  //                     Text('${now.day}/${now.month}/${now.year}'),
  //                     SizedBox(width: 20),
  //                     Text('${now.hour}:${now.minute}:${now.second}'),
  //                     SizedBox(width: 20),
  //                   ],
  //                 ),
  //                 SizedBox(height: 20),
  //                 Text(locationMessage),
  //               ],
  //             ),
  //           ),
  //           actions: <Widget>[
  //             TextButton(
  //               onPressed: () {
  //                 Navigator.pop(context);
  //               },
  //               child: Text('Submit'),
  //             ),
  //           ],
  //         );
  //       });
  // }
  //
  // createAlertOutDialog(BuildContext context) {
  //   return showDialog(
  //       context: context,
  //       builder: (context) {
  //         return AlertDialog(
  //           title: Text('Check-Out Time'),
  //           content: Container(
  //             height: MediaQuery.of(context).size.height * 0.08,
  //             child: Column(
  //               crossAxisAlignment: CrossAxisAlignment.start,
  //               children: [
  //                 Row(
  //                   children: [
  //                     Text('${now.day}/${now.month}/${now.year}'),
  //                     SizedBox(width: 20),
  //                     Text('${now.hour}:${now.minute}:${now.second}'),
  //                     SizedBox(width: 20),
  //                   ],
  //                 ),
  //                 SizedBox(height: 20),
  //                 Text(locationMessage),
  //               ],
  //             ),
  //           ),
  //           actions: <Widget>[
  //             TextButton(
  //               onPressed: () {
  //                 Navigator.pop(context);
  //               },
  //               child: Text('Submit'),
  //             ),
  //           ],
  //         );
  //       });
  // }

  createAlertDayInDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Check-In Time'),
            content: Container(
              height: MediaQuery.of(context).size.height * 0.2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          mondayDayTime();
                        },
                        child: Text('Monday'),
                      ),
                      SizedBox(width: 20),
                      ElevatedButton(
                        onPressed: () {
                          tuesdayDayTime();
                        },
                        child: Text('Tuesday'),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          wednesdayDayTime();
                        },
                        child: Text('Wednesday'),
                      ),
                      SizedBox(width: 20),
                      ElevatedButton(
                        onPressed: () {
                          thursdayDayTime();
                        },
                        child: Text('Thursday'),
                      ),
                      SizedBox(width: 10),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          fridayDayTime();
                        },
                        child: Text('Friday'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Submit'),
              ),
            ],
          );
        });
  }

  createAlertDayOutDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Check-Out Time'),
            content: Container(
              height: MediaQuery.of(context).size.height * 0.2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          mondayDayTime();
                        },
                        child: Text('Monday'),
                      ),
                      SizedBox(width: 20),
                      ElevatedButton(
                        onPressed: () {
                          tuesdayDayTime();
                        },
                        child: Text('Tuesday'),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          wednesdayDayTime();
                        },
                        child: Text('Wednesday'),
                      ),
                      SizedBox(width: 20),
                      ElevatedButton(
                        onPressed: () {
                          thursdayDayTime();
                        },
                        child: Text('Thursday'),
                      ),
                      SizedBox(width: 10),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          fridayDayTime();
                        },
                        child: Text('Friday'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Submit'),
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    final ref = fb.reference().child("User");
    var time = '${now.hour}:${now.minute}:${now.second}';
    var day = '${now.day}/${now.month}/${now.year}';

    return Scaffold(
      appBar: AppBar(
        title: Text('Logged In'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(user.displayName),
            SizedBox(height: 10),
            Text(user.email),
            SizedBox(height: 60),

            //Text(two.email!),

            Text(time),
            SizedBox(height: 10),
            Text('${now.day}/${now.month}/${now.year}'),
            SizedBox(height: 10),
            Text('$locationMessage'),
            SizedBox(height: 10),

            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                //final r = fb.reference().child("UserData");
                //final ref = fb.reference().child("UserData");
                ref.child("Name").set(user.displayName);
                ref.child("Email").set(user.email);
                ref.child("Location").set(locationMessage);
              },
              child: Text('Database Information'),
            ),

            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                createAlertDayInDialog(context);
                DateTime now = DateTime.now();
                var checkInTime = '${now.hour}:${now.minute}:${now.second}';
                ref.child("Check-In Time").set(checkInTime);
                ref.child("Date").set(day);
                // createAlertDialog(context);
              },
              child: Text('Check-In Time'),
            ),
            SizedBox(height: 10),

            ElevatedButton(
                onPressed: () {
                  createAlertDayOutDialog(context);
                  DateTime now = DateTime.now();
                  var checkOutTime = '${now.hour}:${now.minute}:${now.second}';
                  ref.child("Check-Out Time").set(checkOutTime);
                  ref.child("Date").set(day);
                  //createAlertOutDialog(context);
                },
                child: Text('Check-Out Time')),
            SizedBox(height: 10),

            ElevatedButton(
                onPressed: () {
                  //final ref = fb.reference().child("Working Hours");
                  DateTime now = DateTime.now();
                  int checkOutTime = now.minute;
                  int checkInTime = now.minute;
                  int workingTime = checkOutTime - checkInTime;
                  ref.child("Working hours").set(workingTime);
                },
                child: Text('Working Hours')),
            SizedBox(height: 10),

            ElevatedButton(
                onPressed: () {
                  //final ref = fb.reference().child("Weekly Report");
                  DateTime now = DateTime.now();
                  var saturdayTime = '${now.hour}:${now.minute}:${now.second}';
                  ref.child("Saturday").set(saturdayTime);
                },
                child: Text('Weekly Report')),
            SizedBox(height: 10),

            ElevatedButton(onPressed: () {}, child: Text('Absent Information')),
            SizedBox(height: 10),

            ElevatedButton(
                onPressed: () {}, child: Text('Check-In/CHeck-Out Summary')),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
