import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample App'),
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.73,
            width: MediaQuery.of(context).size.width,
            color: Colors.redAccent.shade700,
            padding: const EdgeInsets.only(top: 150),
            child: const Text(
              'Image',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.141,
            width: MediaQuery.of(context).size.width,
            color: Colors.lightGreenAccent.shade400,
            child: ListView.builder(
              padding: const EdgeInsets.fromLTRB(20, 20, 0, 20),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => const ContainerListView(),
              itemCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}

class ContainerListView extends StatelessWidget {
  const ContainerListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange.shade400,
      width: 110,
      margin: const EdgeInsets.only(right: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(
            Icons.add,
            size: 35,
          ),
          Text(
            'Add',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
