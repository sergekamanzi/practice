import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Set the background color for the entire page
      body: Column(
        children: [
          // Green background filling the top half of the screen
          Flexible(
            flex: 3, // Adjust the ratio of the space occupied by the green section
            child: Container(
              color: Color(0xFF004D40), // Dark green background
              width: double.infinity,
              child: Center(
                child: Image.asset(
                  'assets/images/logo3.png', // Replace with your actual logo asset path
                  height: 80,
                ),
              ),
            ),
          ),
          Flexible(
            flex: 5, // The lower section of the screen for the form
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 40),

                  // Sign in to your account text
                  Text(
                    'Sign in to your account',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: 24), // Add some spacing below the text

                  // Login Form
                  _buildTextField('Email'),
                  SizedBox(height: 16),
                  _buildTextField('Password', obscureText: true),
                  SizedBox(height: 24),

                  // Sign In Button
                  ElevatedButton(
                    onPressed: () {
                      // Implement your sign-in logic here
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF004D40), // Dark green
                      padding: EdgeInsets.symmetric(horizontal: 120, vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    child: Text(
                      'SIGN IN',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 24),

                  // Or sign in with text
                  Text(
                    'or sign in with',
                    style: TextStyle(color: Colors.black54),
                  ),
                  SizedBox(height: 16),

                  // Social Media Icons using FontAwesome
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildSocialIcon(FontAwesomeIcons.google, Colors.red),
                      SizedBox(width: 16),
                      _buildSocialIcon(FontAwesomeIcons.instagram, Colors.purpleAccent),
                      SizedBox(width: 16),
                      _buildSocialIcon(FontAwesomeIcons.facebookF, Colors.blue),
                    ],
                  ),
                  SizedBox(height: 24),

                  // Don't have an account? Sign Up
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Don\'t have an account?'),
                      TextButton(
                        onPressed: () {
                          // Navigate to the RegisterPage
                          Navigator.pushNamed(context, '/register');
                        },
                        child: Text(
                          'SIGN UP',
                          style: TextStyle(color: Color(0xFF004D40)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Helper method to build text fields
  Widget _buildTextField(String labelText, {bool obscureText = false}) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: labelText,
        filled: true,
        fillColor: Colors.grey.shade200,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }

  // Helper method to build social media icons using FontAwesome
  Widget _buildSocialIcon(IconData icon, Color color) {
    return GestureDetector(
      onTap: () {
        // Implement your social sign-in logic here
      },
      child: CircleAvatar(
        radius: 20,
        backgroundColor: color.withOpacity(0.1),
        child: FaIcon(
          icon,
          color: color,
          size: 20,
        ),
      ),
    );
  }
}