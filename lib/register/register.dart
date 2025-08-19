import 'package:flutter/material.dart';
import 'package:tugas_13flutter/model/user.dart';
import 'package:tugas_13flutter/sqflite/db_helper.dart';

class Register1 extends StatefulWidget {
  const Register1({super.key});

  @override
  State<Register1> createState() => _Register1State();
}

class _Register1State extends State<Register1> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool isVisibility = false;
  bool _obscurePassword = true;
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            // gradient: LinearGradient(
            //   colors: [Colors.blue, Colors.purple],
            //   begin: Alignment.topLeft,
            //   end: Alignment.bottomRight,
            // ),
            color: Colors.indigo,
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Image.asset(
            "assets/images/pngwing.com.png",
            fit: BoxFit.contain,
          ),
        ),
        actions: [
          Row(
            children: [
              Icon(Icons.volume_down, size: 40, color: Colors.white),
              SizedBox(width: 10),
              Icon(Icons.account_circle, size: 40, color: Colors.white),
              SizedBox(width: 10),
              Icon(Icons.settings, size: 40, color: Colors.white),
            ],
          ),
        ],
      ),
      body:
          // Container(
          //   decoration: BoxDecoration(
          //     image:
          //   ),
          // ),
          Container(
            // width: double.infinity,
            // height: double.infinity,
            // color: Colors.green,
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              // gradient: LinearGradient(
              //   colors: [Colors.green.shade400, Colors.orange.shade300],
              //   begin: Alignment.topLeft,
              //   end: Alignment.bottomRight,
              // ),
              color: Colors.grey[100],
            ),
            child: Form(
              child: Column(
                children: [
                  Image(
                    width: 200,
                    height: 200,
                    image: AssetImage("assets/images/pngwing.com.png"),
                  ),
                  Center(
                    child: Text(
                      "Daftar, Yuk!",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        // fontFamily: "Gilroy",
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: TextFormField(
                        controller: emailController,
                        decoration: InputDecoration(
                          hintText: "Masukkan Email Anda",
                          labelText: "Email",
                          filled: true,
                          fillColor: Colors.orange,
                          prefixIcon: Icon(Icons.email),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: TextFormField(
                        controller: passwordController,
                        obscureText: _obscurePassword,
                        decoration: InputDecoration(
                          hintText: "Masukkan Password Anda",
                          labelText: "Password",
                          filled: true,
                          fillColor: Colors.orange,
                          prefixIcon: Icon(Icons.password),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _obscurePassword = !_obscurePassword;
                              });
                            },
                            icon: Icon(
                              _obscurePassword
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: TextFormField(
                        controller: nameController,
                        decoration: InputDecoration(
                          hintText: "Masukkan Username Anda",
                          labelText: "Username",
                          filled: true,
                          fillColor: Colors.orange,
                          prefixIcon: Icon(Icons.person),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        registerUser();
                      },
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all<Color>(
                          Colors.orange,
                        ),
                      ),
                      child: Text(
                        "Selesai",
                        style: TextStyle(
                          color: (Colors.white),
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Row(
                      children: [
                        Expanded(
                          child: Divider(color: Colors.grey, thickness: 1),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            "Or Sign In With",
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                        ),
                        Expanded(
                          child: Divider(color: Colors.grey, thickness: 1),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage("assets/images/google.png.png"),
                        width: 40,
                        height: 40,
                      ),
                      SizedBox(width: 50),
                      Image(
                        image: AssetImage("assets/images/facebook.png.png"),
                        width: 40,
                        height: 40,
                      ),
                      SizedBox(width: 50),
                      Image(
                        image: AssetImage("assets/images/pinterest.png.png"),
                        width: 40,
                        height: 40,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
    );
  }

  void registerUser() async {
    isLoading = true;
    setState(() {});
    final email = emailController.text.trim();
    final password = passwordController.text.trim();
    final name = nameController.text.trim();
    if (email.isEmpty || password.isEmpty || name.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Email, Password, dan Nama tidak boleh kosong"),
        ),
      );
      isLoading = false;

      return;
    }
    final user = User(email: email, password: password, name: name);
    await DbHelper.registerUser(user);
    Future.delayed(const Duration(seconds: 1)).then((value) {
      isLoading = false;
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text("Pendaftaran berhasil")));
    });
    setState(() {});
    isLoading = false;
  }
}
