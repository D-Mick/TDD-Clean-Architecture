import 'package:dartz/dartz.dart';
import 'package:tdd_number_trivia_app/core/error/failures.dart';
import 'package:tdd_number_trivia_app/core/platform/network_info.dart';
import 'package:tdd_number_trivia_app/feature/number_trivia/data/datasources/number_trivia_local_data_source.dart';
import 'package:tdd_number_trivia_app/feature/number_trivia/data/datasources/number_trivia_remote_data_source.dart';
import 'package:tdd_number_trivia_app/feature/number_trivia/domain/entities/number_trivia.dart';
import 'package:tdd_number_trivia_app/feature/number_trivia/domain/repositories/number_trivia_repository.dart';

class NumberTriviaRepositoriesImpl implements NumberTriviaRepository{
  final NumberTriviaLocalDataSource localDataSource;
  final NumberTriviaRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  NumberTriviaRepositoriesImpl({required this.localDataSource, required this.remoteDataSource, required this.networkInfo});



  @override
  Future<Either<Failure, NumberTrivia>> getConcreteNumberTrivia(int? umber) {
    // TODO: implement getConcreteNumberTrivia
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, NumberTrivia>> getRandomNumberTrivia() {
    // TODO: implement getRandomNumberTrivia
    throw UnimplementedError();
  }

}
