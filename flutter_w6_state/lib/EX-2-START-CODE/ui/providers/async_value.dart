enum AsyncValueState { loading, error, success }

class AsyncValue<T> {
  final T? data; 
  final Object? error; 
  final AsyncValueState state;

  // Private constructor to initialize the state, data, or error
  const AsyncValue._({this.data, this.error, required this.state});

  // Factory constructor for the "loading" state
  factory AsyncValue.loading() => const AsyncValue._(state: AsyncValueState.loading);

  // Factory constructor for the "success" state with data
  factory AsyncValue.success(T data) => AsyncValue._(data: data, state: AsyncValueState.success);

  // Factory constructor for the "error" state with an error message
  factory AsyncValue.error(Object error) => AsyncValue._(error: error, state: AsyncValueState.error);
}