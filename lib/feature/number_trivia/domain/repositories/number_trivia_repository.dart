import 'package:dartz/dartz.dart';
import 'package:tdd_number_trivia_app/core/error/failures.dart';
import 'package:tdd_number_trivia_app/feature/number_trivia/domain/entities/number_trivia.dart';

abstract class NumberTriviaRepository{
  Future<Either<Failure, NumberTrivia>> getConcreteNumberTrivia(int? umber);
  Future<Either<Failure, NumberTrivia>> getRandomNumberTrivia();
}