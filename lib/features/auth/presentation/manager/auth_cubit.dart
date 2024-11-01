import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:sehety_app/features/auth/presentation/manager/auth_states.dart';

class AuthCubit extends Cubit<AuthStates> {
  AuthCubit() : super(AuthInitialState());
  /////////login ///////
  login(String emailAddress, String password) async {
    emit(LoginLoadingState());
    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: emailAddress, password: password);
      emit(LoginSuccessState());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        emit(LoginErrorState('لا يوجد حساب بهذا البريد'));
      } else if (e.code == 'wrong-password') {
        emit(LoginErrorState('كلمة المرور غير صحيحة'));
      } else {
        log(e.toString());
        emit(LoginErrorState('حدث خطأ ما'));
      }
    }
  }

  ///register as doctor/////
  registerAsDctor(String name, String emailAddress, String password) async {
    emit(RegisterAsDoctorLoadingState());
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
      User user = credential.user!;

      user.updateDisplayName(name);
      //////////////////store in fire store//////////////
      FirebaseFirestore.instance.collection('doctors').doc(user.uid).set({
        'name': name,
        'email': emailAddress,
        'uid': user.uid,
        'specialization': '',
        'rating': 3,
        'image': '',
        'phone1': '',
        'phone2': '',
        'bio': '',
        'openHour': '',
        'closeHour': '',
        'address': '',
      }, SetOptions(merge: true));
      emit(RegisterAsDoctorSuccessState());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        emit(RegisterAsDoctorErrorState('كلمة المرور ضعيفة'));
      } else if (e.code == 'email-already-in-use') {
        emit(RegisterAsDoctorErrorState('الحساب موجود بالفعل .'));
      } else {
        emit(RegisterAsDoctorErrorState("حدث خطأ ما"));
      }
    } catch (e) {
      log(e.toString());
      emit(RegisterAsDoctorErrorState(e.toString()));
    }
  }

  registerAsPatient(String name, String emailAddress, String password) async {
    emit(RegisterAsPatientLoadingState());
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
      User user = credential.user!;

      user.updateDisplayName(name);
      //////////////////store in fire store//////////////
      FirebaseFirestore.instance.collection('patients').doc(user.uid).set({
        'name': name,
        'email': emailAddress,
        'uid': user.uid,
        'image': '',
        'phone': '',
        'bio': '',
        'age': null,
        'city': '',
      }, SetOptions(merge: true));
      emit(RegisterAsPatientSuccessState());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        emit(RegisterAsPatientErrorState('كلمة المرور ضعيفة'));
      } else if (e.code == 'email-already-in-use') {
        emit(RegisterAsPatientErrorState('الحساب موجود بالفعل .'));
      } else {
        emit(RegisterAsPatientErrorState("حدث خطأ ما"));
      }
    } catch (e) {
      log(e.toString());
      emit(RegisterAsPatientErrorState(e.toString()));
    }
  }
}
