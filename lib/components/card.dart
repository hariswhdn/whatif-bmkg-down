import 'package:flutter/material.dart';
import './tr.dart';

Widget card({
  tanggal,
  jam,
  lintang,
  bujur,
  magnitude,
  kedalaman,
  wilayah,
  potensi,
}) {
  return Container(
    padding: const EdgeInsets.symmetric(
      horizontal: 12,
      vertical: 8,
    ),
    decoration: BoxDecoration(
      border: Border.all(
        width: 1,
        color: Colors.black12,
      ),
      borderRadius: const BorderRadius.all(Radius.circular(8)),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Table(
          columnWidths: const {
            0: FractionColumnWidth(.25),
            1: FractionColumnWidth(.75),
          },
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          children: [
            tr('Tanggal', "${tanggal ?? '-'} ${jam ?? '-'}"),
            tr('Lintang, Bujur', "${lintang ?? '-'}, ${bujur ?? '-'}"),
            tr('Magnitude', magnitude ?? '-'),
            tr('Kedalaman', kedalaman ?? '-'),
            tr('Wilayah', wilayah ?? '-'),
            tr('Potensi', potensi ?? '-'),
          ],
        ),
      ],
    ),
  );
}
