import 'package:fpdart/fpdart.dart';
import 'package:meepshoptest/core/errors/failure.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

// For use cases that don't require parameters
class NoParams {}
