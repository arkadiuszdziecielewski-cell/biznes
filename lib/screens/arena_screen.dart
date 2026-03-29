import 'package:flutter/material.dart';

class ArenaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ARENA LIDERÓW", style: TextStyle(letterSpacing: 1.2)),
        actions: [
          IconButton(icon: Icon(Icons.filter_list), onPressed: () {}),
        ],
      ),
      body: Column(
        children: [
          _buildStatsSummary(),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) => TyperCard(rank: index + 1),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatsSummary() {
    return Container(
      padding: EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _statItem("Aktywnych", "1,240"),
          _statItem("W puli", "45,000 pkt"),
          _statItem("Top Yield", "+42%"),
        ],
      ),
    );
  }

  Widget _statItem(String label, String value) {
    return Column(
      children: [
        Text(label, style: TextStyle(color: Colors.grey, fontSize: 12)),
        Text(value, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Color(0xFF00C805))),
      ],
    );
  }
}

class TyperCard extends StatelessWidget {
  final int rank;
  TyperCard({required this.rank});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        contentPadding: EdgeInsets.all(16),
        leading: CircleAvatar(
          backgroundColor: Colors.blueGrey,
          child: Text("#$rank", style: TextStyle(color: Colors.white)),
        ),
        title: Text("Typer_Expert_$rank", style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text("Nisza: Ekstraklasa, Tenis ATP"),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text("+12.5%", style: TextStyle(color: Color(0xFF00C805), fontWeight: FontWeight.bold, fontSize: 18)),
            Text("Yield (30d)", style: TextStyle(fontSize: 10, color: Colors.grey)),
          ],
        ),
      ),
    );
  }
}
