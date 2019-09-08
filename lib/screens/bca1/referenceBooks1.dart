import 'package:flutter/material.dart';

class ReferenceBooks extends StatelessWidget {
  static const routeName = '/books';
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
                          Text("First Sem",
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
    'C Programming',
    <Entry>[
      Entry(
        'Programming in ANSI C by E Balguruswamy',

      ),
      Entry(
        'C Programming: A Modern Approach” by K N King',
      ),
      Entry(
        'Let Us C',

      ),
    ],
  ),
  Entry(
    'Opearting Systems',
    <Entry>[
      Entry(
          'TM Dhamdhere, Tata McGraw Hill'),
      Entry(
        'William Stalling for OS',

      ),
    ],
  ),
  Entry(
    'Fundamentals of Computer',
    <Entry>[
      Entry(
          'Computer Fundamentals by PK Sinha'),
    ],
  ),
  Entry(
    'Differential Mathematics',
    <Entry>[
      Entry(
          'Differential and Integral Calculus Vol. I by N S Piskunov'),
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
