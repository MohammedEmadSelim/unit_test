import 'package:flutter_test/flutter_test.dart';
import 'package:unit_test/main.dart';

void main (){
  test('test reversed String', (){
    String initialValue = 'hello';
    String method = reverseString(initialValue);
    String expectedValue = 'oll=eh';
    expect(method, expectedValue);
  });

}