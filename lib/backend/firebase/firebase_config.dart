import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDuOIXIu3DnCY2ObZ1sFJUivEuJG5_vFUk",
            authDomain: "fieldside-v2-v7id21.firebaseapp.com",
            projectId: "fieldside-v2-v7id21",
            storageBucket: "fieldside-v2-v7id21.firebasestorage.app",
            messagingSenderId: "893883904795",
            appId: "1:893883904795:web:306cef65c9c6909c8299be"));
  } else {
    await Firebase.initializeApp();
  }
}
