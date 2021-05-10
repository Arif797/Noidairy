import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:successivepoc/model/list_model.dart';

class ListViewScreen extends StatefulWidget {
  @override
  _ListViewScreenState createState() => _ListViewScreenState();
}

class _ListViewScreenState extends State<ListViewScreen> {
  List<DataModel> listData;

  @override
  void initState() {
    dataSync();
    super.initState();
  }

  void dataSync() async {
    String getResponse = await requestServer();
    print(getResponse.toString() + "./////............");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text('List of data'),
      ),
    );
  }
}

Future<String> requestServer() async {
  var url = Uri.parse('https://jsonplaceholder.typicode.com/posts');
  var response = await http.get(url);
  var responseData = json.decode(response.body);
  print(responseData.toString());

  // var dataID = responseData["Id"];
  // var userID = responseData["UserId"];
  // List<DataModel> listData = [
  //   DataModel(
  //       id: dataID,
  //       userId: userID,
  //       title: responseData["Title"].toString(),
  //       body: responseData["Body"].toString())
  // ];
  print(responseData["Title"] + "///////////////");
  return responseData["Title"];
}
