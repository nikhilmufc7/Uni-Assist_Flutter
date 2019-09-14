import 'package:flutter/material.dart';

class CoursesScreen extends StatelessWidget {
  static const routeName = '/courses';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Courses",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            color: Colors.white,
            fontSize: 22,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: ListView.builder(
        physics: ScrollPhysics(),
        itemBuilder: (BuildContext context, int index) =>
            EntryItem(data[index]),
        itemCount: data.length,
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
    'BTech- CSE',
    <Entry>[
      Entry(
        'AI and Machine Learning',
//        <Entry>[
//          Entry('Item A0.1'),
//          Entry('Item A0.2'),
//          Entry('Item A0.3'),
//        ],
      ),
      Entry('Data Science'),
      Entry('Fintech'),
    ],
  ),
  Entry(
    'BCA',
    <Entry>[
      Entry('Mobile Application and Web Technology'),
      Entry('Cloud and System administration'),
    ],
  ),
  Entry(
    'BBA',
    <Entry>[
      Entry('Three year integrated course for Business Administration'),

    ],
  ),

  Entry(
    'B.Sc - Biotechnology',
    <Entry>[
      Entry('Graduates can work as expert, technician, and researcher as well as pursue teaching job with higher education.'),

    ],
  ),

  Entry(
    'B-Des',
    <Entry>[
      Entry('Graphic and UX design course with emphasis on User Experience'),

    ],
  ),

  Entry(
    'BCom',
    <Entry>[
      Entry('Three year course in Commerence and management. A stepping store for a career in Business.'),

    ],
  ),
  Entry(
    'B.A',
    <Entry>[
      Entry('Three year course in Journalism and Mass Communication.'),

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

