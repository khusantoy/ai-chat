import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("RobotGPT"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 238, 238, 238),
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
                        ),
                        child: const Text(
                          "Hi! How can I help you today?",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.080,
                          child: const Center(
                            child: Text(
                              "🤖",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      const Flexible(
                        child: SizedBox(
                          child: Text(
                            "Hi Gemini! How are you feeling today? Hi Gemini! How are you feeling today?",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Form(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey.shade200,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.image),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    width: MediaQuery.of(context).size.width * 0.65,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 231, 231, 231),
                      borderRadius: BorderRadius.circular(35),
                    ),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Message",
                        border: InputBorder.none,
                      ),
                      validator: (value) {
                        if (value!.trim().isEmpty) {
                          return "Enter a message";
                        }
                      },
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.black,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_upward_rounded,
                        color: Colors.white,
                      ),
                      tooltip: 'Send',
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
