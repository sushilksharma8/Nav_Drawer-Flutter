import 'package:flutter/material.dart';

import 'data.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer App"),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: Column(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://cdn.pixabay.com/photo/2017/10/05/22/55/anonymous-2821433_640.jpg"),
              minRadius: 100,
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "Sushil.s8",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Divider(
              color: Colors.black,
              thickness: 4,
              indent: 10,
              endIndent: 10,
            ),
            ListView.builder(
                itemCount: drawerList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Icon(drawerList[index].icon),
                    title: Text(drawerList[index].title),
                  );
                }),
          ],
        ),
      ),
      body: Center(
        child: Text("This is homepage!"),
      ),
    );
  }
}
