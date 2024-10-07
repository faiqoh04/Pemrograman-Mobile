import 'package:flutter/material.dart';
import 'basic_widgets/text_widget.dart'; // Mengimpor MyTextWidget
import 'basic_widgets/image_widgets.dart'; // Mengimpor MyImageWidget
import 'basic_widgets/loading_cupertino.dart'; // Impor LoadingCupertino
import 'basic_widgets/fab_widget.dart'; // Impor FabWidget
import 'basic_widgets/scaffold_widget.dart'; // Impor ScaffoldWidget
import 'basic_widgets/dialog_widget.dart'; // Impor DialogWidget
import 'basic_widgets/text_field_widget.dart'; // Impor TextFieldWidget
import 'basic_widgets/date_picker_widget.dart'; // Impor DatePickerWidget

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const MyTextWidget(), // Gunakan MyTextWidget
              // const MyImageWidget(), // Gunakan MyImageWidget
              // const LoadingCupertino(), // Gunakan LoadingCupertino
              // const FabWidget(), // Panggil FabWidget di sini
              // const ScaffoldWidget(), // Panggil ScaffoldWidget di sini
              // const DialogWidget(), // Panggil DialogWidget di sini
              // const TextFieldWidget(), // Panggil TextFieldWidget di sini
              // const DatePickerWidget(), // Panggil DatePickerWidget di sini
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
