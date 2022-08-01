
// hata sinifidir. Hata islemlerinde mesaj olusturmak icin direkt olarak bu sinifi kullanacagiz.
class BaseError {
  final String message;
  BaseError({
    required this.message,
  });
}