import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:tdd_number_trivia_app/feature/number_trivia/data/models/number_trivia_model.dart';
import 'package:tdd_number_trivia_app/feature/number_trivia/domain/entities/number_trivia.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  final tNumberTrivialModel = NumberTriviaModel(text: "Test text", number: 1);

  test("should be a subclass of NumberTriva entities", () {
    expect(tNumberTrivialModel, isA<NumberTrivia>());
  });

  group("from  Json", () {
    test("should return a valid model when the JSON number is an integer",
        () async {
      Map<String, dynamic> toJson = json.decode(fixture('trivia.json'));
      final result = NumberTriviaModel.fromJson(toJson);
      expect(result, tNumberTrivialModel);
    });

    test(
        "should return a valid model when the JSON number is regarded as a double",
        () async {
      Map<String, dynamic> toJson = json.decode(fixture('trivia_double.json'));
      final result = NumberTriviaModel.fromJson(toJson);
      expect(result, tNumberTrivialModel);
    });

  });

  group("to Json", (){
    test("should return from JSON map containing the proper data", () async{
      final result = tNumberTrivialModel.toJson();
      final expectedMap = {
        "text": "Test text",
        "number": 1,
      };

      expect(result, expectedMap);

    });

  });
}
