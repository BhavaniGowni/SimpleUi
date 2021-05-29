import 'package:flutter/rendering.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _tabController;
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Image.asset('assets/fricks.png', fit: BoxFit.cover, height: 32,),
               Container(
                  padding: const EdgeInsets.all(8.0),
                   child: Text('                                                       HOME',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),))
            ],
          ),
          backgroundColor: Colors.white,
          bottom: TabBar(
              indicatorColor: Colors.yellow.shade600,
              indicatorWeight: 2.0,
              indicatorPadding: EdgeInsets.zero,
              indicatorSize: TabBarIndicatorSize.label,
              indicator: BoxDecoration(),
              labelColor: Colors.yellow.shade600,
              labelStyle: TextStyle(),
              labelPadding: EdgeInsets.only(top: 10.0),
              unselectedLabelColor: Colors.grey,
              unselectedLabelStyle: TextStyle(),
              isScrollable: false,
              controller: _tabController,
              // only  if DefaultTabContoller is not used.
              dragStartBehavior: DragStartBehavior.start,
              mouseCursor: SystemMouseCursors.noDrop,
              physics: ScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
              tabs: [
                Tab(
                  text: 'Construct',
                ),
                Tab(
                  text: 'Repair',
                ),
                Tab(
                  text: 'Buy Only',
                ),
              ]
          ),
        ),
        body: TabBarView(
          children: [
            Container(
               child: ConstructScreen(),
            ),
            Center(
                child: Text(
                  'This is Repair Tab',
                  /// Index:1
                  style: TextStyle(fontSize: 32),
                )),
            Center(
                child: Text(
                  'This is Buy Only Tab',

                  /// Index:2
                  style: TextStyle(fontSize: 32),
                )),
          ],
          controller: _tabController,
          // only if DefaultTabController is not used
          physics: ScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          dragStartBehavior: DragStartBehavior.start, // default
        ),
      ),
    );
  }
}

class ConstructScreen extends StatelessWidget {
  final TextEditingController _controller = new TextEditingController();
  List<String> items = <String>['sq gaz', 'sq ft', 'sq m'];
  String dropdownValue = 'sq gaz';
  int _groupvalue = 0;
  String radioItem = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 30),
                Container(
                    padding: EdgeInsets.all(10,),
                    child: Text('ENTER BUILD UP AREA:',
                      /// Index:1
                      style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black,),
                    )
                ),
                 SizedBox(height: 30),
                   Container(
                   child:  Container(
                     child: new Column(
                       children: [
                         new Padding(
                           padding: const EdgeInsets.all(10.0),
                           child: new Row(
                             children: <Widget>[
                               new Expanded(
                                   child: new TextField(
                                      controller: _controller,
                                     decoration: InputDecoration(
                                       border: OutlineInputBorder(),
                                     ),
                                   )
                               ),
                                 DropdownButton<String>(
                                   value: dropdownValue,
                                   icon: const Icon(Icons.arrow_drop_down_sharp),
                                   iconSize: 24,
                                   elevation: 16,
                                   style: const TextStyle(color: Colors.blue),
                                   underline: Container(
                                     height: 2,
                                     color: Colors.blue,
                                   ),
                                   onChanged: (String? newValue) {
                                     setState(() {
                                       dropdownValue = newValue!;
                                     });
                                   },
                                   items: <String>['sq gaz', 'sq ft', 'sq m']
                                       .map<DropdownMenuItem<String>>((String value) {
                                     return DropdownMenuItem<String>(
                                       value: value,
                                       child: Text(value),
                                     );
                                   }).toList(),
                                 )
                          ] ),
                         ),
                       ],
                     ),
                   ),
                ),
              ]),
            SizedBox(height: 10,width: 20,),
            Row(
              children: [
                Container(
                    padding:EdgeInsets.all(10),

                    child: Column(
                        children: <Widget>[
                          Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.all(10),
                              margin: const EdgeInsets.only(top: 0),
                              child: Text(
                                'Without Material',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20),
                              )),
                          Row(
                              children: <Widget>[
                                Radio(
                                  value: 1,
                                  groupValue: _groupvalue,
                                  onChanged:  (int? value) {
                                    setState(() {
                                      _groupvalue = value!;
                                    });
                                  },
                                ),
                                Text("xyz INR")]),
                        ]
                    )
                ),
                SizedBox(height: 10,width: 20),
                Container(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.all(10),
                              margin: const EdgeInsets.only(top: 90),
                              child: Text(
                                '   With Material   \n'
                                    '(recommended)',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20),
                              )),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Radio(
                                  value: 1,
                                  groupValue: _groupvalue,
                                  onChanged:  (int? value) {
                                    setState(() {
                                      _groupvalue = value!;
                                    });
                                  },
                                ),
                                Text("xyz INR (gold)")]),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Radio(
                                  value: 2,
                                  groupValue: _groupvalue,
                                  onChanged:  (int? value) {
                                    setState(() {
                                      _groupvalue = value!;
                                    });
                                  },
                                ),
                                Text("xyz INR (diamond)")]),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Radio(
                                  value: 3,
                                  groupValue: _groupvalue,
                                  onChanged:  (int? value) {
                                    setState(() {
                                      _groupvalue = value!;
                                    });
                                  },
                                ),
                                Text("xyz INR (platinum)")]),
                        ]
                    )
                ),
              ],
            ),

            Container(
              padding: EdgeInsets.all(90),
              child: RaisedButton(
                onPressed: () {
                },
                textColor: Colors.white,
                color: Colors.blue,

                shape: RoundedRectangleBorder(

                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(color: Colors.black87),

                ),

                padding: const EdgeInsets.all(10.0),
                child:
                const Text('Submit', style: TextStyle(fontSize: 20)),

              ),
            ),
          ],

        )),
    );

  }
  void setState(Null Function() param0) {}

}