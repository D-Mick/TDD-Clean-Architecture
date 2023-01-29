import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tdd_number_trivia_app/core/platform/network_info.dart';
import 'package:tdd_number_trivia_app/feature/number_trivia/data/datasources/number_trivia_local_data_source.dart';
import 'package:tdd_number_trivia_app/feature/number_trivia/data/datasources/number_trivia_remote_data_source.dart';
import 'package:tdd_number_trivia_app/feature/number_trivia/data/repositories_impl/number_trivia_repositories_impl.dart';

class MockRemoteDataSource extends Mock implements NumberTriviaRemoteDataSource{}

class MockLocalDataSource extends Mock implements NumberTriviaLocalDataSource{}

class MockNetworkInfo extends Mock implements NetworkInfo{}

void main(){
  NumberTriviaRepositoriesImpl repositoriesImpl;
  MockRemoteDataSource mockRemoteDataSource;
  MockLocalDataSource mockLocalDataSource;
  MockNetworkInfo mockNetworkInfo;
  
  setUp((){
    mockRemoteDataSource = MockRemoteDataSource();
    mockLocalDataSource = MockLocalDataSource();
    mockNetworkInfo = MockNetworkInfo();
    repositoriesImpl = NumberTriviaRepositoriesImpl(
      remoteDataSource: mockRemoteDataSource,
      localDataSource: mockLocalDataSource,
      networkInfo: mockNetworkInfo,
    );
  });
}

