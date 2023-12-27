import 'package:date_field/date_field.dart';
import 'package:flutter/material.dart';

class AddEventPage extends StatefulWidget {
  const AddEventPage({super.key});

  @override
  State<AddEventPage> createState() => _AddEventPageState();
}

class _AddEventPageState extends State<AddEventPage> {
  final _formKey = GlobalKey<FormState>();

  final confNameControler = TextEditingController();
  final speackerNameControler = TextEditingController();
  String selectedConfType = 'talk';
  DateTime selectedConfDate = DateTime.now();

  @override
  void dispose() {
    super.dispose();
    confNameControler.dispose();
    speackerNameControler.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Nom du conférencié',
                  hintText: "entrer le nom de la conférence",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "veiller remplir ce champ";
                  }
                  return null;
                },
                controller: confNameControler,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Nom du speaker',
                  hintText: "entrer le nom du speaker",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "veiller remplir ce champ";
                  }
                  return null;
                },
                controller: speackerNameControler,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: DropdownButtonFormField(
                  items: const [
                    DropdownMenuItem(
                      value: 'talk',
                      child: Text('Talk show'),
                    ),
                    DropdownMenuItem(
                      value: 'demo',
                      child: Text('Demo code'),
                    ),
                    DropdownMenuItem(
                      value: 'partner',
                      child: Text('Partner'),
                    )
                  ],
                  decoration:
                      const InputDecoration(border: OutlineInputBorder()),
                  value: selectedConfType,
                  onChanged: (value) {
                    setState(() {
                      selectedConfType = value!;
                    });
                  }),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: DateTimeFormField(
                decoration: const InputDecoration(
                  hintStyle: TextStyle(color: Colors.black45),
                  errorStyle: TextStyle(color: Colors.redAccent),
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.event_note),
                  labelText: 'Choir une date',
                ),
                mode: DateTimeFieldPickerMode.dateAndTime,
                autovalidateMode: AutovalidateMode.always,
                validator: (e) =>
                    (e?.day ?? 0) == 1 ? 'Please not the first day' : null,
                onDateSelected: (DateTime value) {
                  setState(() {
                    selectedConfDate = value;
                  });
                },
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      final confName = confNameControler.text;
                      final speackerName = speackerNameControler.text;

                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text("Envoi en cours...")));
                      FocusScope.of(context).requestFocus(FocusNode());

                      print(
                          'vous avez enregistré la conférence: ${confName}; du speacker: ${speackerName}');
                      print('type de conference: ${selectedConfType}');
                      print('Date de la conférence: ${selectedConfDate}');
                    }
                  },
                  child: const Text('Envoyer')),
            )
          ],
        ),
      ),
    );
  }
}
