import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  late FocusNode myFocusNode;

final prodiController = TextEditingController();
final nimController = TextEditingController();
final namaController = TextEditingController();
final semesterController = TextEditingController();

void printValue() {
  print('Teks Pada Field Program Studi: ${prodiController.text}');
}
showData(){
  return showDialog(context: context, 
  builder: (BuildContext context){
    return AlertDialog(content: Text('Nim:${nimController.text}\nNama:${namaController.text}\nProdi:${prodiController.text}\nSemester:${semesterController.text}'),
    );
  },
  );
}
  @override
  void initState() {
    super.initState();
    myFocusNode = FocusNode();
    prodiController.addListener(printValue);
  }
  @override
  void dispose() {
    myFocusNode.dispose();
    super.dispose();
  }

  void validateInput() {
    FormState? form = formKey.currentState;
    const snackBar = SnackBar(content: Text('Semua data sudah divalidasi'));
    if (form!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      showData();
    }
  }

  InputDecoration getInputDecoration({required String hint, required String label, required Icon icon}) {
  return InputDecoration(
    hintText: hint,
    labelText: label,
    icon: icon,
    enabledBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey), // sebelum diklik
    ),
    focusedBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.blue, width: 2.0), // saat fokus
    ),
    border: const OutlineInputBorder(),
  );
}

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        padding: const EdgeInsets.all(15.0),
        child: Form(
          key: formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                controller: nimController,
                autofocus: true,
                decoration: getInputDecoration(
                  hint: 'Nim',
                  label: 'Nim',
                  icon: const Icon(Icons.person_pin),
                ),
                keyboardType: TextInputType.text,
                validator: (String? value) {
                  if (value!.isEmpty) {
                    return 'Nim tidak boleh kosong';
                  }
                  return null;
                },
                focusNode: myFocusNode,
              ),
              const SizedBox(height: 10.0),
              TextFormField(
                controller: namaController,
                decoration: getInputDecoration(
                  hint: 'Nama',
                  label: 'Nama',
                  icon: const Icon(Icons.person),
                ),
                keyboardType: TextInputType.text,
                validator: (String? value) {
                  if (value!.isEmpty) {
                    return 'Nama tidak boleh kosong';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10.0),
              TextFormField(
                controller: prodiController,
                decoration: getInputDecoration(
                  hint: 'Program Studi',
                  label: 'Program Studi',
                  icon: const Icon(Icons.dashboard),
                ),
                keyboardType: TextInputType.text,
                validator: (String? value) {
                  if (value!.isEmpty) {
                    return 'Program Studi tidak boleh kosong';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10.0),
              TextFormField(
                controller: semesterController,
                decoration: getInputDecoration(
                  hint: 'Semester',
                  label: 'Semester',
                  icon: const Icon(Icons.format_list_numbered),
                ),
                keyboardType: TextInputType.number,
                validator: (String? value) {
                  if (value!.isEmpty) {
                    return 'Semester tidak boleh kosong';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20.0),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton( child: const Text('submit'),
                  onPressed: validateInput,),
                  Container(width: 20,),

                  ElevatedButton(
                    child: const Text('Fokus ke Nama'),
                    onPressed: () {
                      FocusScope.of(context).requestFocus(myFocusNode);
                    }
                     
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}


