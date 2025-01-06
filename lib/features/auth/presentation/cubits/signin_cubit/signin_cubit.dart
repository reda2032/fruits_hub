import 'package:bloc/bloc.dart';
import 'package:fruits_hub/features/auth/domain/repos/auth_repo.dart';
import 'package:meta/meta.dart';

import '../../../domain/entites/user_entity.dart';

part 'signin_state.dart';

class SigninCubit extends Cubit<SigninState> {
  SigninCubit(this.authRepo) : super(SigninInitial());
  final AuthRepo authRepo;
  // sign in with email and password
  Future<void> signin(String email, String password) async {
    emit(SigninLoading());
    var result = await authRepo.signinWithEmailAndPassword(
      email,
      password,
    );
    result.fold(
      (failure) => emit(SigninFailure(message: failure.message)),
      (userEntity) => emit(SigninSuccess(userEntity: userEntity)),
    );
  }

  // sign in with google
  Future<void> signinWithGoogle() async {
    emit(SigninLoading());
    var result = await authRepo.signinWithGoogle();
    result.fold(
      (failure) => emit(SigninFailure(message: failure.message)),
      (userEntity) => emit(SigninSuccess(userEntity: userEntity)),
    );
  }

  // sign in with facebook
  Future<void> signinWithFacebook() async {
    emit(SigninLoading());
    var result = await authRepo.signinWithFacebook();
    result.fold(
      (failure) => emit(SigninFailure(message: failure.message)),
      (userEntity) => emit(SigninSuccess(userEntity: userEntity)),
    );
  }
}
