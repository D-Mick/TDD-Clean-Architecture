import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:tdd_number_trivia_app/core/error/failures.dart';
import 'package:tdd_number_trivia_app/core/usecases/usecase.dart';
import 'package:tdd_number_trivia_app/feature/number_trivia/domain/entities/number_trivia.dart';
import 'package:tdd_number_trivia_app/feature/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:tdd_number_trivia_app/feature/number_trivia/domain/usecases/get_concrete_number_trivia.dart';

class GetRandomNumberTrivia implements Usecase<NumberTrivia, NoParams>{
  NumberTriviaRepository numberTriviaRepository;

  GetRandomNumberTrivia(this.numberTriviaRepository);

  @override
  Future<Either<Failure, NumberTrivia>> call(NoParams params) async{
    return await numberTriviaRepository.getRandomNumberTrivia();
  }
}
