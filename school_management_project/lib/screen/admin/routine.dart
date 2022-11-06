import 'package:flutter/material.dart';

enum SearchType { class1, class2, class3, class4 }

class Routine extends StatefulWidget {
  const Routine({super.key});

  @override
  State<Routine> createState() => _RoutineState();
}

class _RoutineState extends State<Routine> {
 
final  SearchType _searchType = SearchType.class1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Subjects',
          style: TextStyle(color: Colors.black),
        ),
        actions: <Widget>[
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(5),
            margin: const EdgeInsets.all(11),
            width: 110,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                shape: BoxShape.rectangle,
                color: Colors.blue),
            child: InkWell(
              onTap: () {},
              child: const Text(
                'Create New',
              ),
            ),
          )
        ],
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                margin: const EdgeInsets.all(50),
                width: double.infinity,
                height: 500,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.green.shade200,
                        blurRadius: 15.0, // soften the shadow
                        spreadRadius: 5.0, //extend the shadow
                        offset: const Offset(
                          5.0, // Move to right 5  horizontally
                          5.0, // Move to bottom 5 Vertically
                        ),
                      )
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        const Text(
                          'Select Class Name',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        Container(
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(5),
                          padding: const EdgeInsets.all(11),
                          width: 130,
                          height: 50,
                          decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(3),
                            shape: BoxShape.rectangle,
                          ),
                          child: DropdownButton<SearchType>(
                            value: _searchType,
                            items: const <DropdownMenuItem<SearchType>>[
                              DropdownMenuItem<SearchType>(
                              
                                value: SearchType.class1,
                                  child: Text('Class 1'),
                              ),
                              DropdownMenuItem<SearchType>(
                                value: SearchType.class2,
                                child: Text('Class 2'),
                                
                              ),
                              DropdownMenuItem<SearchType>(
                                value: SearchType.class3,
                                child: Text('Class 3'),
                                
                              ),
                              DropdownMenuItem<SearchType>(
                                 value: SearchType.class4,
                                child: Text('Class 4'),
                               
                              ),
                            ],
                            onChanged: ((value) {
                              value = _searchType;
                            }),
                          ),
                        )
                      ],
                    ),
                    DataTable(
                      border:const  TableBorder(),
                      columns: const [
                        DataColumn(label: Text('#'), numeric: true),
                        DataColumn(label: Text('Subject Code')),
                        DataColumn(label: Text('Subject Name')),
                        DataColumn(label: Text('Faculty')),
                        DataColumn(label: Text('BookName')),
                        DataColumn(label: Text('Action'))
                      ],
                      rows: const [
                        DataRow(cells: [
                          DataCell(Text('1')),
                          DataCell(Text('01')),
                          DataCell(Text('English'), placeholder: true),
                          DataCell(Text('Miss Sana')),
                          DataCell(Text('AFAQ')),
                          DataCell(Icon(
                            Icons.delete,
                            color: Colors.red,
                          )),
                        ]),
                        DataRow(cells: [
                          DataCell(Text('2')),
                          DataCell(Text('008')),
                          DataCell(Text('Islamiyat')),
                          DataCell(Text('Miss Sana')),
                          DataCell(Text('AFAQ')),
                          DataCell(Icon(
                            Icons.delete,
                            color: Colors.red,
                          )),
                        ]),
                        DataRow(cells: [
                          DataCell(Text('3')),
                          DataCell(Text('01')),
                          DataCell(Text('English')),
                          DataCell(Text('Miss Sana')),
                          DataCell(Text('AFAQ')),
                          DataCell(Icon(
                            Icons.delete,
                            color: Colors.red,
                          )),
                        ]),
                        DataRow(cells: [
                          DataCell(Text('4')),
                          DataCell(Text('008')),
                          DataCell(Text('Science')),
                          DataCell(Text('Miss Sana')),
                          DataCell(Text('AFAQ')),
                          DataCell(Icon(
                            Icons.delete,
                            color: Colors.red,
                          )),
                        ]),
                        DataRow(cells: [
                          DataCell(Text('5')),
                          DataCell(Text('01')),
                          DataCell(Text('Urdu')),
                          DataCell(Text('Miss Sana')),
                          DataCell(Text('AFAQ')),
                          DataCell(Icon(
                            Icons.delete,
                            color: Colors.red,
                          )),
                        ]),
                        DataRow(cells: [
                          DataCell(Text('6')),
                          DataCell(Text('008')),
                          DataCell(Text('Math')),
                          DataCell(Text('Miss Sana')),
                          DataCell(Text('AFAQ')),
                          DataCell(Icon(
                            Icons.delete,
                            color: Colors.red,
                          )),
                        ]),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ]),
    );
  }
}
