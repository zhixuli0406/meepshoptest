import 'package:fpdart/fpdart.dart';
import 'package:meepshoptest/core/errors/failure.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

abstract class UseCaseWithoutParams<Type> {
  Future<Either<Failure, Type>> call();
}

// For UseCases that return a Stream and don't take parameters (or take parameters)
abstract class StreamUseCase<Type, Params> {
  Stream<Type> call(Params params);
}

abstract class StreamUseCaseWithoutParams<Type> {
  Stream<Type> call();
}

class NoParams {}
