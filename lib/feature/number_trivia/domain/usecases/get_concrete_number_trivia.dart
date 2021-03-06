import 'package:dartz/dartz.dart';
import 'package:tdd_number_trivia_app/core/error/failures.dart';
import 'package:tdd_number_trivia_app/feature/number_trivia/domain/entities/number_trivia.dart';
import 'package:tdd_number_trivia_app/feature/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:meta/meta_meta.dart';

class GetConcreteNumberTrivia{
  final NumberTriviaRepository repository;

  GetConcreteNumberTrivia(this.repository);

  Future<Either<Failure, NumberTrivia>> call({required int number}) async{
    return await repository.getConcreteNumberTrivia(number);
  }
}