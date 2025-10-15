import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: DicePage()));
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void rollDice() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });

    // Hapus SnackBar yang mungkin masih ada
    ScaffoldMessenger.of(context).hideCurrentSnackBar();

    // Tampilkan SnackBar baru dengan hasil penjumlahan
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Total Dadu: ${leftDiceNumber + rightDiceNumber}'),
        duration: const Duration(seconds: 1),
      ),
    );

    // Tampilkan AlertDialog jika mendapat double sixes
    if (leftDiceNumber == 6 && rightDiceNumber == 6) {
      _showJackpotDialog();
    }
  }

  // Fungsi untuk menampilkan AlertDialog
  void _showJackpotDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('JACKPOT!'),
          content: Text('Selamat, Anda mendapatkan double enam!'),
          actions: <Widget>[
            TextButton(
              child: Text('Main Lagi'),
              onPressed: () {
                Navigator.of(context).pop(); // Tutup dialog
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text('Dice'),
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: Row(
            children: <Widget>[
              Expanded(
                child: TextButton(
                  onPressed: () {
                    rollDice();
                  },
                  child: Image.asset('images/dice$leftDiceNumber.png'),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    rollDice();
                  },
                  child: Image.asset('images/dice$rightDiceNumber.png'),
                ),
              ),
            ],
          ),
        ));
  }
}
