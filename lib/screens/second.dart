import 'package:flutter/material.dart';

class Second extends StatelessWidget {
  final result;
  final Color res_color;
  Second({super.key, required this.result, required this.res_color});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Result"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.add_box),
              title: Text("About"),
              subtitle: Text('this is About'),
              trailing: Icon(Icons.check),
              onTap: () {},
            )
          ],
        ),
      ),
      body: Center(
        child: Image.network(
            "https://images.sidearmdev.com/crop?url=https%3a%2f%2fdxbhsrqyrr690.cloudfront.net%2fsidearm.nextgen.sites%2fuconnhuskies.com%2fimages%2f2023%2f10%2f21%2fUConnFB_vs_USF_20231021_CM0_3018.jpg&height=608&width=1080&type=jpeg&gravity=smart"),
      ),
      floatingActionButton:
          FloatingActionButton(onPressed: () {}, child: Icon(Icons.add)),
    );
  }
}
