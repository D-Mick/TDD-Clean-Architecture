import 'package:tdd_number_trivia_app/feature/number_trivia/data/models/number_trivia_model.dart';

abstract class NumberTriviaRemoteDataSource{
  Future<NumberTriviaModel> getConcreteNumberTrivia(int? umber);
  Future<NumberTriviaModel> getRandomNumberTrivia();
}