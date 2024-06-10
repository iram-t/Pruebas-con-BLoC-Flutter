part of 'splash_cubit.dart';

enum SplashStatus {
  loading,
  success
}

class SplashState extends Equatable {
  const SplashState({this.status = SplashStatus.loading});

  final SplashStatus status;

  @override
  List<Object> get props => [status];

  SplashState copyWith({
    SplashStatus? status,
  }) {
    return SplashState(
      status: status ?? this.status,
    );
  }
}

