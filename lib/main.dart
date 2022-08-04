import 'package:flutter/material.dart';
import 'package:flutter_application_1/main_bk.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: '点击计数器',
        theme: ThemeData(primarySwatch: Colors.green),
        home: const HomePage(title: '小橙计算器'));
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);
  final title;

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        ), //const去除蓝色波浪线
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('你已经点的次数:'),
            Text(
              '$_count',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _increase(3), child: const Icon(Icons.add)),
      );
  }

  void _increase(int n) {
    setState(() {
      _count += n;
    });
  }
}
