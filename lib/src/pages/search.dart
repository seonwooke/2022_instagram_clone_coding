import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  List<List<int>> groupBox = [[], [], []] ;

  @override
  void initState() {
    super.initState();
    for(var i = 0 ; i < 100 ; i++) {
      groupBox[i % 3].add(1) ;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            _appbar(),
            Expanded(child: _body()),
          ],
        ),
      ),
    );
  }

  Widget _appbar() {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            margin: const EdgeInsets.only(left: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: const Color(0xffefefef),
            ),
            child: Row(
              children: [
                Icon(Icons.search),
                Text(
                  '검색',
                  style: TextStyle(
                    fontSize: 15,
                    color: Color(0xff838383),
                  ),
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: const Icon(Icons.location_pin),
        ),
      ],
    );
  }

  Widget _body() {
    return SingleChildScrollView(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              children: [
                Container(
                  height: 140,
                  color: Colors.red,
                ),
                Container(
                  height: 140,
                  color: Colors.blue,
                ),
                Container(
                  height: 140,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Container(
                  height: 140,
                  color: Colors.blue,
                ),
                Container(
                  height: 140,
                  color: Colors.red,
                ),
                Container(
                  height: 140,
                  color: Colors.blue,
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Container(
                  height: 140,
                  color: Colors.grey,
                ),
                Container(
                  height: 140,
                  color: Colors.blue,
                ),
                Container(
                  height: 140,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Commit5