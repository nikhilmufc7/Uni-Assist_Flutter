import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  static const routeName = '/about';
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "About",
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
                      Icons.info,
                      size: 36,
                    ),
                    Text(
                      "DYPIU Assist",
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
                          Text("Email bug reports at: "),
                          Text("me@nikk.codes")
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
    'FAQs',
    <Entry>[
      Entry(
        'What is DYPIU Assist?',
        <Entry>[
          Entry(
              'Its a college app which offers different features all packaged together'),
        ],
      ),
      Entry(
        'Who is the target audience?',
        <Entry>[
          Entry('Students of DY Patil international university'),
        ],
      ),
      Entry(
        'Where can I contact to add more features',
        <Entry>[
          Entry('Email Nikhil on singh.nikhil999@gmail.com or me@nikk.codes'),
        ],
      ),
    ],
  ),
  Entry(
    'About Us',
    <Entry>[
      Entry(
          'The app is part of the network of apps built by parent entity of Mr. Nikhil Singh i.e Nikkcodes Ventures'),
    ],
  ),
  Entry(
    'Privacy Policy',
    <Entry>[
      Entry(
          'Nikhil Singh built the DYPIU Assist app as an Open Source app. This SERVICE is provided by Nikhil Singh at no cost and is intended for use as is. This page is used to inform visitors regarding my policies with the collection, use, and disclosure of Personal Information if anyone decided to use my Service.'),
    ],
  ),
  Entry(
    'Terms and Conditions',
    <Entry>[
      Entry(
          'These terms and conditions ("Terms", "Agreement") are an agreement between Mobile Application Developer ("Mobile Application Developer", "us", "we" or "our") and you ("User", "you" or "your"). This Agreement sets forth the general terms and conditions of your use of the DYPIU Assist mobile application and any of its products or services (collectively, "Mobile Application" or "Services").'),
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
