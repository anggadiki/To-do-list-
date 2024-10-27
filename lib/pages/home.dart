import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0; // Untuk melacak indeks yang dipilih

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; // Mengubah indeks yang dipilih
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "To Do List App",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            height: 127.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.blueAccent,
            ),
            margin: const EdgeInsets.symmetric(horizontal: 10.0),
            padding: const EdgeInsets.all(22.0),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Text(
                    "Keep it up!! Complete your tasks. You almost there!",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20), // Jarak antara kotak dan tombol
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    fixedSize: const Size(155, 42),
                    padding: const EdgeInsets.symmetric(
                      vertical: 10.0,
                    ),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                  ),
                  onPressed: () {
                    // Logika untuk navigasi ke "Personal"
                  },
                  child: const Text("Personal",
                      style: TextStyle(color: Colors.black)),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.grey.shade200,
                    fixedSize: const Size(155, 42),
                    padding: const EdgeInsets.symmetric(
                      vertical: 10.0,
                    ),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                  ),
                  onPressed: () {
                    // Logika untuk navigasi ke "Work"
                  },
                  child:
                      const Text("Work", style: TextStyle(color: Colors.black)),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          // Daftar tugas
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.all(Radius.elliptical(10, 10)),
                  ),
                  margin: const EdgeInsets.only(bottom: 10.0),
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 10.0),
                  child: Row(children: [
                    Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(2.0),
                      margin: const EdgeInsets.only(right: 10.0),
                      decoration: const BoxDecoration(
                        color: Colors.grey,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(Icons.check, color: Colors.white),
                    ),
                    const Text("Complete your tasks",
                        style: TextStyle(color: Colors.white)),
                  ]),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade600,
                    borderRadius:
                        const BorderRadius.all(Radius.elliptical(10, 10)),
                  ),
                  margin: const EdgeInsets.only(bottom: 10.0),
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 10.0),
                  child: Row(children: [
                    Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(2.0),
                      margin: const EdgeInsets.only(right: 10.0),
                      decoration: const BoxDecoration(
                        color: Colors.grey,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(Icons.check, color: Colors.white),
                    ),
                    const Text("Take bath",
                        style: TextStyle(color: Colors.white)),
                  ]),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade600,
                    borderRadius:
                        const BorderRadius.all(Radius.elliptical(10, 10)),
                  ),
                  margin: const EdgeInsets.only(bottom: 10.0),
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 10.0),
                  child: Row(children: [
                    Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(2.0),
                      margin: const EdgeInsets.only(right: 10.0),
                      decoration: const BoxDecoration(
                        color: Colors.grey,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(Icons.check, color: Colors.white),
                    ),
                    const Text("Breakfast",
                        style: TextStyle(color: Colors.white)),
                  ]),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Logika untuk menambahkan tugas baru
        },
        backgroundColor: Colors.blueAccent,
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Tasks',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Personal',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blueAccent,
        onTap: _onItemTapped,
      ),
    );
  }
}
