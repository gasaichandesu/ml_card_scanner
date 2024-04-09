extension StringExtension on String {
  String clean() => replaceAll(RegExp(r'\D'), '');

  //L,l,S,s,o,O
  String fixPossibleMisspells() => replaceAll('/', '')
      .replaceAll('\\', '')
      .replaceAll('L', '1')
      .replaceAll('l', '1')
      .replaceAll('L', '6')
      .replaceAll('c', '2')
      .replaceAll('S', '5')
      .replaceAll('s', '5')
      .replaceAll('o', '0')
      .replaceAll('O', '0')
      .replaceAll('b', '6')
      .replaceAll('B', '8')
      .replaceAll('e', '2')
      .replaceAll('E', '2')
      .replaceAll('d', '2')
      .replaceAll('t', '4')
      .replaceAll('a', '0')
      .replaceAll('h', '6')
      .replaceAll('T', '7')
      .replaceAll('i', '1')
      .replaceAll('I', '1')
      .replaceAll('U', '0')
      .replaceAll('P', '2')
      .replaceAll('Z', '2')
      .replaceAll('%', '8');

  String possibleDateFormatted() {
    final m = substring(0, 2);
    final y = substring(2, 4);
    return '$m/$y';
  }
}
