import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:yabika/components/bottomNav.dart';
import 'package:yabika/screens/firestoreservice.dart';
import 'package:yabika/screens/mainPage.dart';


class MaxTable4 extends StatefulWidget {
  @override
  State<MaxTable4> createState() => _MaxTable4State();
}

class _MaxTable4State extends State<MaxTable4> {
  final firestore=FirestoreService();
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent,
          centerTitle: true,
          title: const Text('Liderlik Tablosu'),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context, MaterialPageRoute(builder: (context)=> MainPage()));
            }, icon: Icon(Icons.arrow_back),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            StreamBuilder<QuerySnapshot>(
              stream: firestore.getData(), builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot,
                ) {
              if(snapshot.hasError) {
                return const Text('Bir şeyler ters gitti');
              }
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Text('Yükleniyor..');
              }

              final data = snapshot.requireData;

              return ListView.builder(shrinkWrap: true,
                itemCount: data.size,
                itemBuilder: (context, index) {
                  return DataTable(
                    columns: const <DataColumn> [
                      DataColumn(
                        label: Text(
                          'İsim',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'Soyisim',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      DataColumn(
                          label: Text(
                            'Puan',
                            style: TextStyle(fontWeight: FontWeight.bold
                            ),
                          ),
                          numeric: true
                      ),

                    ],
                    rows: <DataRow> [
                      DataRow(
                        selected: true, cells: <DataCell> [
                        DataCell(Text('${data.docs[index]['Username']}')),
                        DataCell(Text('${data.docs[index]['Usersurname']}')),
                        DataCell(Text('${data.docs[index]['Userscore']}')),
                      ],
                      ),
                    ],
                  );
                },
              );
            },
            ),

           // Row(
             // children: [
               // Expanded(
                 // child: ElevatedButton(onPressed: (){
                   // firestore.updateData( );
                  //}, child: Text("Arttır")),
                //),
              //],
            //)
          ],
        ),
        bottomNavigationBar: BottomNav(),
      ),
    );
  }
}