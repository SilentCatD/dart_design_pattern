/// Adapter is a structural design pattern that allows objects with
/// incompatible interfaces to collaborate.

class JsonNumberApi {
  Map<String, int> getNumberByMap() {
    return {"data": 1};
  }
}

class StringNumberApi {
  String getNumberByString() {
    return "1";
  }
}

abstract class GetNumberRepo {
  int getNumber();
}

/// Object Adapter
class JsonNumberObjectAdapter implements GetNumberRepo {
  final JsonNumberApi adaptee;

  JsonNumberObjectAdapter(this.adaptee);

  @override
  int getNumber() {
    return adaptee.getNumberByMap()["data"] as int;
  }
}

class StringNumberObjectAdapter implements GetNumberRepo {
  final StringNumberApi adaptee;

  StringNumberObjectAdapter(this.adaptee);

  @override
  int getNumber() {
    return int.parse(adaptee.getNumberByString());
  }
}

/// Class Adapter
class JsonNumberClassAdapter with JsonNumberApi implements GetNumberRepo {
  @override
  int getNumber() {
    return getNumberByMap()["data"] as int;
  }
}

class StringNumberClassAdapter with StringNumberApi implements GetNumberRepo {
  @override
  int getNumber() {
    return int.parse(getNumberByString());
  }
}

void main() {
  late GetNumberRepo repo;

  /// object adapter
  final jsonApi = JsonNumberApi();
  final stringApi = StringNumberApi();
  final jsonObjectAdapter = JsonNumberObjectAdapter(jsonApi);
  final stringObjectAdapter = StringNumberObjectAdapter(stringApi);

  /// class adapter
  final jsonClassAdapter = JsonNumberClassAdapter();
  final stringClassAdapter = StringNumberClassAdapter();

  repo = stringObjectAdapter;
  repo = jsonObjectAdapter;

  repo = jsonClassAdapter;
  repo = stringClassAdapter;

  repo.getNumber();
}
