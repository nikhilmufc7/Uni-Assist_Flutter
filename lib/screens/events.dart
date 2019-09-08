import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import '../util/events.dart';
import 'package:flutter/material.dart';

class EventsScreen extends StatefulWidget {
  static const routeName = '/events';
  @override
  _EventsScreenState createState() => new _EventsScreenState();
}

class _EventsScreenState extends State<EventsScreen> {

  List<Board> boardMessages = List();
  Board board;
  final FirebaseDatabase database = FirebaseDatabase.instance;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  DatabaseReference databaseReference;

  @override
  void initState() {
    super.initState();

    board = Board("", "");
    databaseReference = database.reference().child("events");
    databaseReference.onChildAdded.listen(_onEntryAdded);
    databaseReference.onChildChanged.listen(_onEntryChanged);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Events"),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: new Column(
        children: <Widget>[
          Flexible(
            flex: 0,
            child: Center(

              child: Form(
                key: formKey,
                child: Flex(
                  direction: Axis.vertical,
                  children: <Widget>[
                    ListTile(
                      leading: new Icon(Icons.subject),
                      title: TextFormField(
                        initialValue: "",
                        autocorrect: true,
                        onSaved: (val) => board.subject = val,
                        validator: (val) => val == "" ? val : null,
                      ),
                    ),
                    ListTile(
                      leading: new Icon(Icons.message),
                      title: new TextFormField(
                        initialValue: "",
                        onSaved: (val) => board.body = val,
                        validator: (val) => val == "" ? val : null,

                      ),
                    ),
                    FlatButton(
                      child: new Text("Post"),
                      color: Colors.redAccent,
                      onPressed:() {
                        handleSubmit();
                      },
                    )
                  ],
                ),
              ),
            ),
          ),
          Flexible(
            child: FirebaseAnimatedList(
              query: databaseReference,
              itemBuilder: (_,DataSnapshot snapshot,Animation<double> animation, int index){
                return new Card(

                  child: new ListTile(
                    leading: new CircleAvatar(
                      backgroundColor: Colors.deepPurpleAccent,
                    ),
                    title: new Text(boardMessages[index].subject),
                    subtitle: new Text(boardMessages[index].body),
                  ),
                );


              },
            ),
          )
        ],
      ),
    );
  }

  void _onEntryAdded(Event event) {
    if(!mounted)return;
    setState(() {
      boardMessages.add(Board.fromSnapshot(event.snapshot));
    });
  }

  handleSubmit() {
    final FormState form = formKey.currentState;
    if(form.validate()){
      form.save();
      form.reset();

      databaseReference.push().set(board.toJson());
    }
  }

  void _onEntryChanged(Event event) {
    var oldEntry = boardMessages.singleWhere((entry){
      return entry.key == event.snapshot.key;
    });
    if(!mounted)return;
    setState(() {
      boardMessages[boardMessages.indexOf(oldEntry)] = Board.fromSnapshot(event.snapshot);
    });
  }
}
