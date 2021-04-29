import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:provider_login_demo/stores/login_store.dart';

class GoogleLogin extends StatefulWidget {
  static String id = 'google-login';
  @override
  _GoogleLoginState createState() => _GoogleLoginState();
}

class _GoogleLoginState extends State<GoogleLogin> {
  @override
  Widget build(BuildContext context) {
    return Consumer<LoginStore>(
      builder: (_, loginStore, __) {
        return Scaffold(
          backgroundColor: Color(0xFFF8F8F8),
          body: Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    'Sign In!',
                    style: GoogleFonts.poppins(
                        color: Colors.blueAccent,
                        fontSize: 60,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Spacer(),
                Image(
                  image: NetworkImage(
                      'https://event.iitg.ac.in/icann2019/Proceedings_LaTeX/2019/IITG_logo.png'),
                ),
                Spacer(),
                Spacer(),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          loginStore.signInWithGoogle(context);
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Colors.white70,
                            padding: EdgeInsets.all(25),
                            elevation: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              image: NetworkImage(
                                  'https://upload-icon.s3.us-east-2.amazonaws.com/uploads/icons/png/2659939281579738432-512.png'),
                              height: 25,
                              width: 25,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              'Login with Google',
                              style: GoogleFonts.rubik(
                                  color: Colors.black87,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Spacer(),
              ],
            ),
          ),
        );
      },
    );
  }
}
