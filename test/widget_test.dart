import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:c_widgets/main.dart';

void main() {
  testWidgets('Dice roll shows a SnackBar and does not show AlertDialog on a normal roll', (WidgetTester tester) async {
    // 1. Build our app. Perhatikan kita sekarang langsung mem-build DicePage
    // karena Scaffold sudah menjadi bagian dari DicePage itu sendiri.
    await tester.pumpWidget(const MaterialApp(home: DicePage()));

    // 2. Verifikasi keadaan awal.
    // Cek apakah ada dua gambar (dadu) di layar.
    expect(find.byType(Image), findsNWidgets(2));
    // Pastikan tidak ada SnackBar atau Dialog di awal.
    expect(find.byType(SnackBar), findsNothing);
    expect(find.byType(AlertDialog), findsNothing);

    // 3. Simulasikan aksi: menekan tombol dadu pertama.
    await tester.tap(find.byType(TextButton).first);
    // pump() untuk rebuild setelah setState. pumpAndSettle() untuk animasi SnackBar.
    await tester.pumpAndSettle();

    // 4. Verifikasi hasil setelah aksi.
    // Pastikan SnackBar muncul.
    expect(find.byType(SnackBar), findsOneWidget);
    // Pastikan konten SnackBar benar.
    expect(find.textContaining('Total Dadu:'), findsOneWidget);
    // Pastikan AlertDialog TIDAK muncul (karena kita tidak menguji kasus jackpot).
    expect(find.byType(AlertDialog), findsNothing);

    print('Widget test for SnackBar passed!');
  });
}
