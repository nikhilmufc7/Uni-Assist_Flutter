import 'package:flutter/material.dart';

class ReferenceBooks2 extends StatelessWidget {
  static const routeName = '/books2';
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Reference Books",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            color: Colors.white,
            fontSize: 22,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: SingleChildScrollView(
        child: Container(
//          height: deviceSize.height,
          width: deviceSize.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                width: deviceSize.width,
                height: 80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Icon(
                      Icons.collections_bookmark,
                      size: 36,
                    ),
                    Text(
                      "Reference Books",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text("For BCA",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 16
                            ),),
                          Text("Third Sem",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 16
                            ),)
                        ],
                      ),
                    )
                  ],
                ),
              ),
              ListView.builder(
                physics: ScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) =>
                    EntryItem(data[index]),
                itemCount: data.length,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Entry {
  Entry(this.title, [this.children = const <Entry>[]]);

  final String title;
  final List<Entry> children;
}

// The entire multilevel list displayed by this app.
final List<Entry> data = <Entry>[
  Entry(
    'Java Programming',
    <Entry>[
      Entry(
        'Programming in Java by E Balguruswamy',

      ),
      Entry(
        'Complete Reference Java by Herbert Schidt',
      ),
      Entry(
        'Head First Java by Kathy Sierra',

      ),
    ],
  ),
  Entry(
    'Computer Networks',
    <Entry>[
      Entry(
          'Kurose and Camp Network Top-Down'),
      Entry(
        'Ian Sommerville 9th edition',

      ),
    ],
  ),
  Entry(
    'Software Engineering',
    <Entry>[
      Entry(
          'A practicioners approach R Pressman'),
    ],
  ),
  Entry(
    'Web Technology',
    <Entry>[
      Entry(
          'Refer W3 Schools and CodeAcademy'),
    ],
  ),

];

// Displays one Entry. If the entry has children then it's displayed
// with an ExpansionTile.
class EntryItem extends StatelessWidget {
  const EntryItem(this.entry);

  final Entry entry;

  Widget _buildTiles(Entry root) {
    if (root.children.isEmpty) return ListTile(title: Text(root.title));
    return ExpansionTile(
      key: PageStorageKey<Entry>(root),
      title: Text(root.title),
      children: root.children.map(_buildTiles).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildTiles(entry);
  }
}
