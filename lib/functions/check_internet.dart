import 'dart:async';

import 'package:connectivity/connectivity.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:flutter/material.dart';

class NoInternetCard extends StatelessWidget {
  final bool show;

  const NoInternetCard(this.show);
  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: show,
      child: NoInternetBanner(),
    );
  }
}

class NoInternetBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "No Internet",
          style: TextStyle(color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class CheckInternate {
  // void _showDialog(String title, String content, BuildContext context) {
  //   showDialog(
  //       context: context,
  //       builder: (BuildContext context) {
  //         return AlertDialog(
  //             title: new Text(title),
  //             content: new Text(content),
  //             actions: <Widget>[
  //               new FlatButton(
  //                   onPressed: () {
  //                     Navigator.of(context).pop();
  //                   },
  //                   child: new Text("Close"))
  //             ]);
  //       });
  // }

  StreamSubscription<DataConnectionStatus> listener;
  var InternetStatus = "Unknown";
  var contentmessage = "Unknown";

  checkConnection(BuildContext context) async {
    listener = DataConnectionChecker().onStatusChange.listen((status) {
      switch (status) {
        case DataConnectionStatus.connected:
          InternetStatus = "Connected to the Internet";

          contentmessage = "Connected to the Internet";
          //     static bool get isInternet =
          //  ConnectivityResult.none ? false : true;

          NoInternetBanner();
          // _showDialog(InternetStatus, contentmessage, context);
          // return false;
          break;
        case DataConnectionStatus.disconnected:
          InternetStatus = "You are disconnected to the Internet. ";
          contentmessage = "Please check your internet connection";
          // _showDialog(InternetStatus, contentmessage, context);
          //return true;
          break;
      }
    });
    return await DataConnectionChecker().connectionStatus;
  }
}

class ConnectivityStream {
  StreamSubscription<ConnectivityResult> subscrp =
      Connectivity().onConnectivityChanged.listen((event) {});

  static ConnectivityResult result;

  bool first = true;

  @required
  void dispose() => subscrp.cancel();

  void onData(void Function(ConnectivityResult) fn) {
    subscrp.onData((data) {
      if (!first) {
        result = data;
        fn(result);
      }
    });
  }

  void getState(void Function(ConnectivityResult) fn) {
    onData(fn);

    Connectivity().checkConnectivity().then((value) {
      first = false;
      result = value;
      fn(result);
    });
  }

  void pause() => subscrp.pause();
  void resume() => subscrp.resume();
  static bool get isInternet =>
      result == ConnectivityResult.none ? false : true;

  static void pushNamed({
    @required ConnectivityStream stream,
    @required String name,
    @required BuildContext context,
    Function onReturn,
  }) {
    stream.pause();
    Navigator.of(context).pushNamed(name).then((value) {
      stream.resume();
      onReturn?.call();
    });
  }

  static void push({
    @required ConnectivityStream stream,
    @required Object page,
    @required BuildContext context,
    Function onReturn,
  }) {
    stream.pause();
    Navigator.of(context)
        .push(
      MaterialPageRoute(
        builder: (context) => page,
      ),
    )
        .then((value) {
      stream.resume();
      onReturn?.call();
    });
  }

  static void pushReplacement({
    @required ConnectivityStream stream,
    @required Object page,
    @required BuildContext context,
  }) {
    stream.dispose();
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => page,
      ),
    );
  }

  static void pushAndRemoveUntil({
    @required ConnectivityStream stream,
    @required Object page,
    @required BuildContext context,
    @required int popCount,
  }) {
    stream.dispose();
    int count = 0;
    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(
        builder: (context) => page,
      ),
      (route) => count++ == popCount,
    );
  }
}
