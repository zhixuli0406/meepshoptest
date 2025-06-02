import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart'; // Changed to standard gap import
import 'package:meepshoptest/core/router/router.dart';
import 'package:meepshoptest/features/auth/presentation/blocs/auth_bloc.dart';
import 'package:meepshoptest/features/auth/presentation/blocs/auth_event.dart';
import 'package:meepshoptest/features/auth/presentation/blocs/auth_state.dart';

@RoutePage()
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _onLoginPressed(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      context.read<AuthBloc>().add(
        AuthLoginRequested(
          username: _usernameController.text,
          password: _passwordController.text,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is AuthFailure) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  state.failure.when(
                    serverError:
                        (message, errorCode, details, statusCode) =>
                            message ?? 'Server Error',
                    networkError: (message) => message ?? 'Network Error',
                    unauthorized: (message) => message ?? 'Unauthorized',
                    notFound: (message) => message ?? 'Not Found',
                    conflict: (message, errorCode) => message ?? 'Conflict',
                    validationError:
                        (message, errorCode, details) =>
                            message ?? 'Validation Error',
                    forbidden: (message) => message ?? 'Forbidden',
                    localCacheError:
                        (message) => message ?? 'Local Cache Error',
                    unknownError:
                        (message, error, stackTrace) =>
                            message ?? 'An unknown error occurred',
                    multiStageError:
                        (message, originalFailure) =>
                            message ?? 'Multi-stage error',
                  ),
                ),
                backgroundColor: Theme.of(context).colorScheme.error,
              ),
            );
          }
        },
        builder: (context, state) {
          return Padding(
            padding: EdgeInsets.all(
              16.r,
            ), // Adjusted to use .r or .w/.h based on flutter_screenutil typical usage
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextFormField(
                    controller: _usernameController,
                    decoration: const InputDecoration(
                      labelText: 'Username',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your username';
                      }
                      return null;
                    },
                  ),
                  Gap(16.h), // Used .h for height-based spacing
                  TextFormField(
                    controller: _passwordController,
                    decoration: const InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(),
                    ),
                    obscureText: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your password';
                      }
                      return null;
                    },
                  ),
                  Gap(24.h),
                  if (state is AuthLoading)
                    const CircularProgressIndicator()
                  else
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(double.infinity, 50.h),
                      ),
                      onPressed: () => _onLoginPressed(context),
                      child: const Text('Login'),
                    ),
                  Gap(16.h),
                  TextButton(
                    onPressed: () {
                      if (AutoRouter.of(context).routeData.name !=
                          RegisterRoute.name) {
                        context.router.push(const RegisterRoute());
                      }
                    },
                    child: const Text('Don\'t have an account? Register'),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
