import 'package:flutter/material.dart';

class CustomSearchDelegate extends SearchDelegate<String> {
  List<String> results = [
    "FlutterBro",
    "JBL",
    "AirPods",
    "AirPodsMax",
    "Mobile",
    "Headphone"
  ];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = "";
          },
          icon: Icon(Icons.clear)),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return BackButton();
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchResult = [];
    for (String i in results) {
      if (i.toLowerCase().contains(query.toLowerCase())) {
        matchResult.add(i);
      }
    }
    return ListView.builder(
      itemCount: matchResult.length,
      itemBuilder: (context, index) {
        var i = matchResult[index];
        return ListTile(
          title: Text(i),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchResult = [];
    for (String i in results) {
      if (i.toLowerCase().contains(query.toLowerCase())) {
        matchResult.add(i);
      }
    }
    return ListView.builder(
      itemCount: matchResult.length,
      itemBuilder: (context, index) {
        var i = matchResult[index];
        return ListTile(
          title: Text(i),
        );
      },
    );
  }
}
