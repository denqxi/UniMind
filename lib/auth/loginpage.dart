import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obscurePassword = true; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true, // important to avoid overflow
      body: Stack(
        children: [
          // Background image
          Image.asset(
            "assets/background.jpg",
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),

          // Foreground content (scrollable)
          SafeArea(
            child: SingleChildScrollView(
              padding: EdgeInsets.only(
                left: 20,
                right: 20,
                bottom: MediaQuery.of(context).viewInsets.bottom + 20,
              ),
              child: Column(
                children: [
                  const SizedBox(height: 80),

                  // Logo + Title
                  Column(
                    children: [
                      Image.asset(
                        "assets/Logo.png",
                        width: 120,
                        height: 120,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Study ta GA!",
                        style: GoogleFonts.montserrat(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 60), // spacing before login box

                  // Login box
                  Container(
                    padding: const EdgeInsets.all(20),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.9),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                          Text(
                            "Login",
                            style: GoogleFonts.montserrat(
                              fontSize: 32,
                              fontWeight: FontWeight.w700,
                              color: const Color(0xFFB41214),
                            ),
                          ),  
                        const SizedBox(height: 5),
                          Text(
                            "Login with your existing credentials.",
                            style: GoogleFonts.montserrat(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.black54,
                            ),
                          ),
                        const SizedBox(height: 20),

                        // Username
                        Text(
                          "Username",
                          style: GoogleFonts.montserrat(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.black87,
                          ),
                        ),
                        const SizedBox(height: 5),
                       TextField(
                          decoration: InputDecoration(
                            hintText: "Enter your username",
                            border: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black54), // bottom line color
                            ),
                            focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black, width: 2), // thicker on focus
                            ),
                            contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                          ),
                        ),

                        const SizedBox(height: 20),

                        // Password
                        Text(
                          "Password",
                          style: GoogleFonts.montserrat(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.black87,
                          ),
                        ),
                        const SizedBox(height: 5),
                        // Password with toggle
                        TextField(
                          obscureText: _obscurePassword,
                          decoration: InputDecoration(
                            hintText: "Enter your password",
                            border: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black54),
                            ),
                            focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black, width: 2),
                            ),
                            suffixIcon: IconButton(
                              icon: Icon(
                                _obscurePassword
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                color: Colors.black54,
                              ),
                              onPressed: () {
                                setState(() {
                                  _obscurePassword = !_obscurePassword;
                                });
                              },
                            ),
                          ),
                        ),

                        const SizedBox(height: 10),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "Forgot Password?",
                            style: GoogleFonts.montserrat(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: Colors.blue,
                            ),
                          ),
                        ),

                        const SizedBox(height: 20),

                        // Login button
                        SizedBox(
                          width: double.infinity,
                          height: 46,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xffb41214),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            onPressed: () {},
                            child: Text(
                              "Login Now",
                              style: GoogleFonts.montserrat(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 15),

                        Center(
                          child: Text(
                            "Doesn’t have an account? Register Here",
                            style: GoogleFonts.montserrat(
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                        ),

                        const SizedBox(height: 15),

                        Row(
                          children: [
                            const Expanded(
                              child: Divider(
                                color: Colors.black26,
                                thickness: 1,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                "or Login with",
                                style: GoogleFonts.montserrat(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black87,
                                ),
                              ),
                            ),
                            const Expanded(
                              child: Divider(
                                color: Colors.black26,
                                thickness: 1,
                              ),
                            ),
                          ],
                        ),


                        const SizedBox(height: 15),

                        // Google button
                        SizedBox(
                          width: double.infinity,
                          height: 46,
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              backgroundColor: Colors.white,
                              side: const BorderSide(color: Colors.grey),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/google icon.png", // your Google icon asset
                                  height: 20,
                                  width: 20,
                                ),
                                const SizedBox(width: 10),
                                Text(
                                  "Continue with Google",
                                  style: GoogleFonts.montserrat(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        const SizedBox(height: 15),

                        Center(
                          child: Text(
                            "By signing up, you agree to our Terms. See how we use your data in our Privacy Policy.",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.montserrat(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: Colors.black54,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ), // bottom padding
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
