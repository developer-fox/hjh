// internet islemlerinde kullanacagimiz veri ust sinifidir. Aldigimiz verileri efektif kullanabilmek icin bu veriler bu siniftan inherit ettigimiz siniflardan nesneler olusturacagiz.
abstract class BaseModel<T>{
  Map<String, dynamic> toJson();
  T fromJson(Map<String, dynamic> jsonData);
}