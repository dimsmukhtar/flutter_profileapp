import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contoh Divider',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: DividerExample(),
    );
  }
}

class DividerExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Divider Examples'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '1. Simple Horizontal Divider',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Divider(
              color: Colors.blue,
              thickness: 2,
            ),
            SizedBox(height: 20),

            Text(
              '2. Horizontal Divider with Indent and EndIndent',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Divider(
              color: Colors.green,
              thickness: 2,
              indent: 30,
              endIndent: 30,
            ),
            SizedBox(height: 20),

            Text(
              '3. Vertical Divider in Row',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                Expanded(child: Container(color: Colors.red, height: 50)),
                VerticalDivider(
                  color: Colors.black,
                  thickness: 2,
                  width: 20,
                ),
                Expanded(child: Container(color: Colors.blue, height: 50)),
              ],
            ),
            SizedBox(height: 20),

            Text(
              '4. Divider with IntrinsicHeight',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                Expanded(child: Text('Left')),
                VerticalDivider(
                  color: Colors.grey,
                  thickness: 1,
                  width: 20,
                ),
                Expanded(child: Text('Right')),
              ],
            ),
            SizedBox(height: 20),

            Text(
              '5. Styled Divider',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Divider(
              color: Colors.purple,
              thickness: 4,
              indent: 50,
              endIndent: 50,
            ),
            SizedBox(height: 20),

            Text(
              '6. Divider in ListView',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Container(
              height: 200,
              child: ListView.separated(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('Item $index'),
                  );
                },
                separatorBuilder: (context, index) {
                  return Divider(
                    color: Colors.orange,
                    thickness: 2,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
