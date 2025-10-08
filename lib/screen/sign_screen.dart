import 'package:flutter/material.dart';

class SignScreen extends StatefulWidget {
  const SignScreen({super.key});



  @override
  State<SignScreen> createState() => SignScreenState();
}

class SignScreenState extends State<SignScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController confirmController = TextEditingController();

  bool isLogin = true; // للتبديل بين تسجيل الدخول وإنشاء حساب

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("تسجيل الدخول"),
        centerTitle: true,
        backgroundColor: Colors.amber,
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Colors.amber.shade100, Colors.white],
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // أيقونة أو صورة
                  Icon(
                    Icons.person_outline,
                    size: 80,
                    color: Colors.amber,
                  ),
                  SizedBox(height: 20),

                  // عنوان الصفحة
                  Text(
                    isLogin ? "مرحباً بعودتك!" : "أنشئ حسابك",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrange,
                    ),
                  ),
                  SizedBox(height: 30),

                  // حقل الاسم (يظهر فقط عند إنشاء حساب)
                  if (!isLogin) ...[
                    _buildTextField(
                      controller: nameController,
                      label: "الاسم الكامل",
                      icon: Icons.person,
                    ),
                    SizedBox(height: 15),
                  ],

                  // حقل البريد الإلكتروني
                  _buildTextField(
                    controller: emailController,
                    label: "البريد الإلكتروني",
                    icon: Icons.email,
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(height: 15),

                  // حقل كلمة المرور
                  _buildTextField(
                    controller: passwordController,
                    label: "كلمة المرور",
                    icon: Icons.lock,
                    isPassword: true,
                  ),
                  SizedBox(height: 15),

                  // حقل تأكيد كلمة المرور (يظهر فقط عند إنشاء حساب)
                  if (!isLogin) ...[
                    _buildTextField(
                      controller: confirmController,
                      label: "تأكيد كلمة المرور",
                      icon: Icons.lock_outline,
                      isPassword: true,
                    ),
                    SizedBox(height: 15),
                  ],

                  // زر التسجيل
                  Container(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        // هنا يمكنك إضافة منطق التسجيل
                        _performSign();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      child: Text(
                        isLogin ? "تسجيل الدخول" : "إنشاء حساب",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),

                  // رابط التبديل بين تسجيل الدخول وإنشاء حساب
                  TextButton(
                    onPressed: () {
                      setState(() {
                        isLogin = !isLogin;
                      });
                    },
                    child: Text(
                      isLogin
                          ? "ليس لديك حساب؟ سجل الآن"
                          : "لديك حساب بالفعل؟ سجل الدخول",
                      style: TextStyle(
                        color: Colors.deepOrange,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // دالة لإنشاء حقل نصي مخصص
  Widget _buildTextField({
    required TextEditingController controller,
    required String label,
    required IconData icon,
    bool isPassword = false,
    TextInputType keyboardType = TextInputType.text,
  }) {
    return TextField(
      controller: controller,
      obscureText: isPassword,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(color: Colors.deepOrange),
        prefixIcon: Icon(icon, color: Colors.amber),
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: Colors.amber, width: 2),
        ),
      ),
    );
  }

  // دالة لتنفيذ عملية التسجيل
  void _performSign() {
    // هنا يمكنك إضافة منطق التحقق من البيانات
    // وإما تسجيل الدخول أو إنشاء حساب جديد

    String email = emailController.text;
    String password = passwordController.text;

    if (isLogin) {
      // منطق تسجيل الدخول
      print("تسجيل الدخول: $email");
    } else {
      // منطق إنشاء حساب
      String name = nameController.text;
      String confirmPassword = confirmController.text;
      print("إنشاء حساب: $name, $email");
    }
  }
}
