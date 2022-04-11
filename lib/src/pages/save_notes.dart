import 'package:flutter/material.dart';

class SaveNotes extends StatefulWidget {
  const SaveNotes({Key? key}) : super(key: key);

  @override
  State<SaveNotes> createState() => _SaveNotesState();
}

class _SaveNotesState extends State<SaveNotes> {
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
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  color: Colors.white,
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_back),
                ),
              ),
              Container(
                color: Colors.white,
                width: w,
                child: TextFormField(
                  decoration:
                      const InputDecoration(hintText: 'Ingrese titulo: '),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    color: Colors.white,
                    width: w * 0.80,
                    child: TextFormField(
                      decoration:
                          const InputDecoration(hintText: 'Fecha inicio: '),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.calendar_today_outlined,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    color: Colors.white,
                    width: w * 0.80,
                    child: TextFormField(
                      decoration:
                          const InputDecoration(hintText: 'Fecha fin: '),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.calendar_today_outlined,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              Container(
                color: Colors.white,
                width: w,
                child: TextFormField(
                  decoration:
                      const InputDecoration(hintText: 'Ingrese contenido: '),
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.save),
      ),
    );
  }
}
