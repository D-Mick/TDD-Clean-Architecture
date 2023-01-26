import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:tdd_number_trivia_app/core/usecases/usecase.dart';
import 'package:tdd_number_trivia_app/feature/number_trivia/domain/entities/number_trivia.dart';
import 'package:tdd_number_trivia_app/feature/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:tdd_number_trivia_app/feature/number_trivia/domain/usecases/get_random_number_trivia.dart';

import 'get_random_number_trivia_test.mocks.dart';

@GenerateMocks([NumberTriviaRepository])
main() {
  late GetRandomNumberTrivia usecase;
  late MockNumberTriviaRepository repository;

  setUp(() {
    repository = MockNumberTriviaRepository();
    usecase = GetRandomNumberTrivia(repository);
  });
  const tNumber = 1;
  final tNumberTrivia = NumberTrivia(text: 'test', number: tNumber);

  test('show random number trivia', () async {
    when(repository.getRandomNumberTrivia())
        .thenAnswer((_) async => Right(tNumberTrivia));

    final result = await usecase(NoParams());
    expect(result, Right(tNumberTrivia));
    verify(repository.getRandomNumberTrivia());
    verifyNoMoreInteractions(repository);
  });
}
