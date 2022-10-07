/// Decorator is a structural design pattern that lets you attach new behaviors
/// to objects by placing these objects inside special wrapper objects that
/// contain the behaviors.
import 'dart:convert';
import 'dart:io';

import 'package:meta/meta.dart';

abstract class DataSource {
  void writeData(String data);

  String readData();
}

abstract class DataSourceDecoratorBase implements DataSource {
  final DataSource dataSource;

  const DataSourceDecoratorBase(this.dataSource);

  @override
  @mustCallSuper
  void writeData(String data) {
    return dataSource.writeData(data);
  }

  @override
  @mustCallSuper
  String readData() {
    return dataSource.readData();
  }
}

class FileDataSource implements DataSource {
  final String fileName;

  const FileDataSource(this.fileName);

  @override
  void writeData(String data) {
    final file = File(fileName);
    file.writeAsStringSync(data);
  }

  @override
  String readData() {
    final file = File(fileName);
    return file.readAsStringSync();
  }
}

class Base64EncryptDecorator extends DataSourceDecoratorBase {
  const Base64EncryptDecorator(super.dataSource);

  @override
  void writeData(String data) {
    final bytes = utf8.encode(data);
    final encryptedBase64Data = base64Encode(bytes);
    return super.writeData(encryptedBase64Data);
  }

  @override
  String readData() {
    final encryptedBase64Data = super.readData();
    final decryptedBytes = base64Decode(encryptedBase64Data);
    return utf8.decode(decryptedBytes);
  }
}

void main() {
  final fileName = "data.txt";
  final data = "this is the data";
  DataSource source = FileDataSource(fileName);
  source = Base64EncryptDecorator(source);
  source.writeData(data);
  print(source.readData());
}
