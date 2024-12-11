import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:unit_test/main.dart';

void main(){
  testWidgets('test ui', (widgetTester) async{
    await widgetTester.pumpWidget(MyApp());


    var reversedTextFormField = find.byType(TextFormField);
    expect(reversedTextFormField, findsOneWidget);



    await widgetTester.enterText(reversedTextFormField, 'hello');
    expect(find.text('hello'), findsOneWidget);


    var reverseButton = find.text('Reverse');
    expect(reverseButton, findsOneWidget);


    await widgetTester.tap(reverseButton);
    await widgetTester.pump();
  
      
    expect(find.text('olleh'), findsOneWidget);
  },);
}