import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:tdd_number_trivia_app/core/error/failures.dart';
import 'package:tdd_number_trivia_app/core/usecases/usecase.dart';
import 'package:tdd_number_trivia_app/feature/number_trivia/domain/entities/number_trivia.dart';
import 'package:tdd_number_trivia_app/feature/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:meta/meta_meta.dart';

class GetConcreteNumberTrivia implements Usecase<NumberTrivia, Params>{
  final NumberTriviaRepository repository;

  GetConcreteNumberTrivia(this.repository);

  @override
  Future<Either<Failure, NumberTrivia>> call(Params params) async{
    return await repository.getConcreteNumberTrivia(params.number);
  }
}

class Params extends Equatable{
  final int number;

  Params({required this.number});

  @override
  // TODO: implement props
  List<Object?> get props => [number];
}