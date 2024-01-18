String formatPrice(int price) {
  String formattedPrice = '';
  while (price > 0) {
    final segment = price % 1000;
    price = price ~/ 1000;
    String segmentString =
        price > 0 ? segment.toString().padLeft(3, '0') : segment.toString();
    formattedPrice = formattedPrice.isEmpty
        ? segmentString
        : '$segmentString $formattedPrice';
  }
  return formattedPrice;
}

int? findLastDigitIndex(String str, [int? start]) {
  for (int i = str.length - 1; i >= (start ?? 0); i--) {
    if (RegExp(r'\d').hasMatch(str[i])) {
      return i;
    }
  }
  return null;
}

String? emailValidator(String? value) {
  if (value!.isEmpty) return 'Введите email';
  bool emailValid = RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(value);
  if (!emailValid) return 'Email введён в ошибкой';
  return null;
}

String? phoneMaskValidator(String? value) {
  if (value!.isEmpty) return 'Введите телефон';
  bool phonelValid = !value.contains('*');
  if (!phonelValid) return 'Телефон введён в ошибкой';
  return null;
}

String? requiredFieldValidator(String? value) {
  if (value == null || value.isEmpty) return 'Обязательное поле';
  return null;
}
