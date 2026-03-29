import 'package:flutter/material.dart';

class AddTipScreen extends StatefulWidget {
  @override
  _AddTipScreenState createState() => _AddTipScreenState();
}

class _AddTipScreenState extends State<AddTipScreen> {
  String selectedSport = 'Piłka Nożna';
  String selectedLeague = 'Ekstraklasa';
  String selectedMatch = 'Wybierz mecz...';
  String selectedEvent = 'Obie strzelą (BTTS)';
  double currentOdds = 1.85;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("KREATOR TYPU"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _sectionLabel("1. WYBIERZ DYSCYPLINĘ I LIGĘ"),
            _buildDropdown(selectedSport, ['Piłka Nożna', 'Tenis', 'NBA', 'E-sport'], (val) => setState(() => selectedSport = val!)),
            _buildDropdown(selectedLeague, ['Ekstraklasa', 'Premier League', 'La Liga', 'ATP Paris'], (val) => setState(() => selectedLeague = val!)),
            
            const SizedBox(height: 20),
            _sectionLabel("2. WYBIERZ MECZ"),
            _buildMatchSelector(),

            const SizedBox(height: 20),
            _sectionLabel("3. WYBIERZ ZDARZENIE"),
            _buildDropdown(selectedEvent, ['Obie strzelą (BTTS)', 'Powyżej 2.5 gola', 'Wygrana gospodarza (1)', 'Handicap -1.5'], (val) => setState(() => selectedEvent = val!)),

            const SizedBox(height: 30),
            _buildOddsVerificationBox(),

            const SizedBox(height: 40),
            _buildSubmitButton(),
          ],
        ),
      ),
    );
  }

  Widget _sectionLabel(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Text(text, style: const TextStyle(color: Colors.grey, fontSize: 12, fontWeight: FontWeight.bold, letterSpacing: 1.1)),
    );
  }

  Widget _buildDropdown(String value, List<String> items, Function(String?) onChanged) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: const Color(0xFF1C2128),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.white10),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: value,
          isExpanded: true,
          dropdownColor: const Color(0xFF1C2128),
          items: items.map((String item) => DropdownMenuItem(value: item, child: Text(item))).toList(),
          onChanged: onChanged,
        ),
      ),
    );
  }

  Widget _buildMatchSelector() {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: const Color(0xFF1C2128),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: const Color(0xFF00C805).withOpacity(0.3)),
        ),
        child: Row(
          children: [
            const Icon(Icons.sports_soccer, color: Color(0xFF00C805)),
            const SizedBox(width: 15),
            Text(selectedMatch, style: const TextStyle(fontSize: 16)),
            const Spacer(),
            const Icon(Icons.search, color: Colors.grey),
          ],
        ),
      ),
    );
  }

  Widget _buildOddsVerificationBox() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFF00C805).withOpacity(0.1),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xFF00C805).withOpacity(0.5)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("WERYFIKACJA KURSU", style: TextStyle(color: Color(0xFF00C805), fontWeight: FontWeight.bold, fontSize: 12)),
              const Text("Kurs rynkowy (średni):", style: TextStyle(color: Colors.grey, fontSize: 10)),
            ],
          ),
          Text(currentOdds.toString(), style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Color(0xFF00C805))),
        ],
      ),
    );
  }

  Widget _buildSubmitButton() {
    return SizedBox(
      width: double.infinity,
      height: 60,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF00C805),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
        child: const Text("DODAJ TYP DO BAZY", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
      ),
    );
  }
}
