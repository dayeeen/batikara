import 'package:batikara/config/theme.dart';
import 'package:batikara/widgets/btk_button.dart';
import 'package:batikara/widgets/btk_text_field.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Stack(
        children: [
          // BG image
          Positioned.fill(
            child: Image.asset(
              'assets/images/bg_login.png', // ganti sesuai asetmu
              fit: BoxFit.cover,
            ),
          ),

          // (opsional) scrim biar kontras
          Positioned.fill(
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.transparent, Colors.black.withOpacity(0.25)],
                ),
              ),
            ),
          ),

          // Bottom "hug" container
          Align(
            alignment: Alignment.bottomCenter,
            child: SafeArea(
              top: false,
              child: Material(
                // pastikan ada Material ancestor untuk TextFormField
                type: MaterialType.transparency,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 28,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(36),
                    ),
                    // bisa tambah shadow tipis kalau mau
                  ),
                  child: SingleChildScrollView(
                    // supaya aman kalau keyboard muncul / layar kecil
                    child: Column(
                      mainAxisSize: MainAxisSize.min, // HUG CONTENT
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(AppText.loginTitle, style: AppTextStyle.title),
                        const SizedBox(height: 12),
                        Text(
                          AppText.loginSubtitle,
                          style: AppTextStyle.subtitle,
                        ),
                        const SizedBox(height: 20),

                        Text(AppText.email, style: AppTextStyle.label),
                        const SizedBox(height: 12),
                        const BtkTextField(
                          hintText: 'Email',
                          keyboardType: TextInputType.emailAddress,
                          // fullWidth: true, // aktifkan kalau sudah kamu tambahkan flag-nya
                        ),
                        const SizedBox(height: 16),

                        Text(AppText.password, style: AppTextStyle.label),
                        const SizedBox(height: 12),
                        const BtkTextField(
                          hintText: 'Password',
                          isPassword: true,
                          keyboardType: TextInputType.visiblePassword,
                          // prefixIcon: Icon(Icons.lock_outline, color: AppColors.brown),
                        ),

                        const SizedBox(height: 6),
                        Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            onPressed: () {
                              // context.push('/forgotpassword');
                            },
                            style: TextButton.styleFrom(padding: EdgeInsets.zero), //biar ga nambah padding
                            child: Text(AppText.forgotPassword, style: AppTextStyle.actionText),
                            
                          ),
                        ),
                        const SizedBox(height: 6),

                        BtkButton(
                          label: AppText.login,
                          fullWidth: true, // isi lebar dalam padding/margin
                          onPressed: () => context.go('/home'),
                        ),
                        const SizedBox(height: 16),
                        Center(
                          child: Text(AppText.orcw, style: AppTextStyle.grey),
                        ),
                        const SizedBox(height: 12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Image(
                                image: AssetImage(
                                  'assets/icons/apple_button.png',
                                ),
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Image(
                                image: AssetImage(
                                  'assets/icons/google_button.png',
                                ),
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Image(
                                image: AssetImage(
                                  'assets/icons/facebook_button.png',
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        Center(
                          child: Text.rich(
                            TextSpan(
                              text:
                                  AppText
                                      .donthaveacc, // "Don't have an account? "
                              style: AppTextStyle.regular.copyWith(
                                color: AppColors.grey,
                              ),
                              children: [
                                TextSpan(
                                  text:
                                      ' ${AppText.signuphere}', // "Sign up here"
                                  style: AppTextStyle.actionText,
                                  recognizer:
                                      TapGestureRecognizer()
                                        ..onTap = () => context.push('/register'),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
