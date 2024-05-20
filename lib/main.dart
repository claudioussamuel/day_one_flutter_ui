import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
    title: 'UI Day One',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      useMaterial3: true,
    ),
    home: const MyHomePage(),
  ));
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const FlutterLogo(
          size: 25,
        ),
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.grey,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
          )
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Stack(
            children: [
              Container(
                alignment: const Alignment(0.0, -.40),
                height: 100,
                color: Colors.white,
                child: const Text(
                  "Claud Coaching",
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(
                  25,
                  90,
                  25,
                  0,
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 2.0,
                        color: Colors.grey,
                      )
                    ]),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        Container(
                          padding: const EdgeInsets.fromLTRB(
                            25,
                            25,
                            5,
                            5,
                          ),
                          child: const Text(
                            "YOU HAVE",
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.fromLTRB(25, 40, 5, 5),
                          child: const Text(
                            "206",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 40,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Container(
                      height: 50,
                      width: 125,
                      decoration: BoxDecoration(
                        color: Colors.greenAccent.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: Text(
                          "Buy more",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "MY COACHES",
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 12),
                ),
                Text(
                  "VIEW PAST SESSIONS",
                  style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 12),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          GridView.count(
            crossAxisCount: 2,
            mainAxisSpacing: 4,
            crossAxisSpacing: 2,
            primary: false,
            shrinkWrap: true,
            children: [
              _buildCard("Claud", "Available", 1),
              _buildCard("Claudious", "Away", 2),
              _buildCard("Opoku", "Away", 3),
              _buildCard("Mensah", "Available", 4),
              _buildCard("Samuel", "Available", 5),
              _buildCard("Kwaku", "Away", 6),
              _buildCard("Owura", "Away", 7)
            ],
          )
        ],
      ),
    );
  }

  Widget _buildCard(String name, String status, int cardIndex) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 2,
      margin: cardIndex.isEven
          ? const EdgeInsets.fromLTRB(10, 0, 25, 10)
          : const EdgeInsets.fromLTRB(25, 0, 25, 10),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Stack(
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    30,
                  ),
                  color: Colors.green,
                  image: const DecorationImage(
                    image: NetworkImage(
                      'https://img.freepik.com/free-photo/portrait-man-cartoon-style_23-2151133992.jpg?t=st=1716193399~exp=1716196999~hmac=7ffd5fe6453c871559b307c9f76924425b56a39971b860bc05afd0920b8a28c0&w=1060',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 35),
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: status == "Away" ? Colors.amber : Colors.green,
                  border: Border.all(
                    color: Colors.white,
                    style: BorderStyle.solid,
                    width: 2,
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            name,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            name,
            style: const TextStyle(
                fontWeight: FontWeight.bold, fontSize: 12, color: Colors.grey),
          ),
          const SizedBox(
            height: 15,
          ),
          Expanded(
            child: Container(
              width: 175,
              decoration: BoxDecoration(
                color: status == "Away" ? Colors.grey : Colors.green,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: const Center(
                child: Text("Request"),
              ),
            ),
          )
        ],
      ),
    );
  }
}
