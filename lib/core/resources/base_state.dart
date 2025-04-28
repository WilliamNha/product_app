abstract class BaseState {
  const BaseState();
}

abstract class SuccessState extends BaseState {
  const SuccessState();
}

abstract class ErrorState extends BaseState {
  String? get errorMessage;
}

abstract class LoadingState extends BaseState {
  const LoadingState();
}
