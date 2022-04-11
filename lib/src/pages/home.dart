import 'package:flutter/material.dart';
import 'package:notes_app/src/pages/save_notes.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        color: Colors.black,
        height: h,
        width: w,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Align(
                alignment: Alignment.topCenter,
                child: Text('Notes Express',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                    )),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return Card(
                      color: Colors.blueGrey,
                      elevation: 0,
                      child: ListTile(
                        trailing: IconButton(
                          color: Colors.white,
                          icon: const Icon(Icons.delete),
                          onPressed: () {},
                        ),
                        title: const Text(
                          'Notas',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueGrey,
        child: const Icon(Icons.add),
        onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const SaveNotes(),
            )),
      ),
    );
  }
}
