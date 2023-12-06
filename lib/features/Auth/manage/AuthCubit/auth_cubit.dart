import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:meta/meta.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
  Future<void> logIn({required String email, required String passwaord}) async {
    emit(LoginCubitLoading());
    try {
      UserCredential user = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: passwaord);
      emit(LoginCubitSuccess());
    } on FirebaseAuthException catch (ex) {
      if (ex.code == 'user-not-found') {
        emit(
          LoginCubitFailler(errorMessage: 'user-not-found'),
        );
      } else if (ex.code == 'wrong-password') {
        emit(
          LoginCubitFailler(errorMessage: 'wrong-password'),
        );
      } else {
        LoginCubitFailler(errorMessage: 'something went wrong');
      }
    } catch (e) {
      emit(
        LoginCubitFailler(errorMessage: 'something went wrong'),
      );
    }
  }

  Future<void> register(
      {required String email, required String passwaord}) async {
    emit(RegisterCubitLoading());
    try {
      UserCredential credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: passwaord,
      );
      emit(RegisterCubitSuccess());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        emit(RegisterCubitFailler(errorMessage: 'weak password'));
      } else if (e.code == 'email-already-in-use') {
        emit(RegisterCubitFailler(
            errorMessage:
                'The account already exists for that email. Try another email address'));
      }
    } catch (e) {
      emit(RegisterCubitFailler(errorMessage: 'something went wrong'));
    }
  }

  // ================ signin with googel
  Future<UserCredential> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  // ======signin with facebook

  Future<UserCredential> signInWithFacebook() async {
    // Trigger the sign-in flow
    final LoginResult loginResult = await FacebookAuth.instance.login();

    // Create a credential from the access token
    final OAuthCredential facebookAuthCredential =
        FacebookAuthProvider.credential(loginResult.accessToken!.token);

    // Once signed in, return the UserCredential
    return FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);
  }
}
