import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:image_picker/image_picker.dart';
// import 'package:image_cropper/image_cropper.dart'; // Removed import for ImageCropper
import 'package:meepshoptest/core/router/router.dart';
import 'package:meepshoptest/features/auth/presentation/blocs/register/register_bloc.dart';
// import 'package:meepshoptest/features/auth/presentation/blocs/register/register_event.dart'; // Removed
// import 'package:meepshoptest/features/auth/presentation/blocs/register/register_state.dart'; // Removed
import 'package:meepshoptest/injectable.dart'; // For getIt

@RoutePage()
class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<RegisterBloc>(),
      child: const _RegisterView(),
    );
  }
}

class _RegisterView extends StatefulWidget {
  // Converted to StatefulWidget to keep controllers and form key
  const _RegisterView();

  @override
  State<_RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<_RegisterView> {
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _passwordConfirmController = TextEditingController();
  // final _avatarController = TextEditingController(); // Will be replaced by image picker logic

  @override
  void initState() {
    super.initState();
    // Add listeners to controllers to dispatch events to RegisterBloc
    _usernameController.addListener(() {
      context.read<RegisterBloc>().add(
        RegisterEvent.usernameChanged(_usernameController.text),
      );
    });
    _passwordController.addListener(() {
      context.read<RegisterBloc>().add(
        RegisterEvent.passwordChanged(_passwordController.text),
      );
    });
    _passwordConfirmController.addListener(() {
      context.read<RegisterBloc>().add(
        RegisterEvent.passwordConfirmChanged(_passwordConfirmController.text),
      );
    });
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    _passwordConfirmController.dispose();
    // _avatarController.dispose();
    super.dispose();
  }

  void _onRegisterPressed(BuildContext context) {
    // Validation can be driven by RegisterBloc state if desired,
    // or keep local form validation and then dispatch.
    // For now, let RegisterBloc handle submission attempt, it can check its own state.isFormValid
    if (_formKey.currentState!.validate()) {
      // Keep local form validation for immediate feedback
      context.read<RegisterBloc>().add(const RegisterEvent.registerSubmitted());
    }
  }

  Future<void> _pickImage(BuildContext context) async {
    final ImagePicker picker = ImagePicker();
    // debugPrint('[RegisterPage] _pickImage: Picking image...'); // Optional: keep or remove debug log
    final XFile? pickedFile = await picker.pickImage(
      source: ImageSource.gallery,
    );
    // debugPrint('[RegisterPage] _pickImage: Picked file path: ${pickedFile?.path}'); // Optional: keep or remove

    if (mounted) {
      // Check mounted before dispatching to Bloc
      // Directly pass the picked file (or null if cancelled) to the Bloc
      context.read<RegisterBloc>().add(
        RegisterEvent.avatarChanged(avatarFile: pickedFile),
      );
    }
    // Removed cropping logic and related debugPrint statements
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Register')),
      body: BlocConsumer<RegisterBloc, RegisterState>(
        listener: (context, state) {
          if (state.errorMessage != null) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.errorMessage!),
                backgroundColor: Theme.of(context).colorScheme.error,
              ),
            );
          }
          // Success message or navigation upon AuthBloc state change (handled globally or by RegisterBloc if it has further success states)
        },
        builder: (context, state) {
          return Padding(
            padding: EdgeInsets.all(16.w),
            child: Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    TextFormField(
                      controller: _usernameController,
                      decoration: const InputDecoration(
                        labelText: 'Username',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter username';
                        }
                        return null;
                      },
                      enabled: !state.isSubmitting,
                    ),
                    Gap(16.h),
                    TextFormField(
                      controller: _passwordController,
                      decoration: const InputDecoration(
                        labelText: 'Password',
                        border: OutlineInputBorder(),
                      ),
                      obscureText: true,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter password';
                        }
                        if (value.length < 6) {
                          return 'Password must be at least 6 characters';
                        }
                        return null;
                      },
                      enabled: !state.isSubmitting,
                    ),
                    Gap(16.h),
                    TextFormField(
                      controller: _passwordConfirmController,
                      decoration: const InputDecoration(
                        labelText: 'Confirm Password',
                        border: OutlineInputBorder(),
                      ),
                      obscureText: true,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please confirm password';
                        }
                        if (value != _passwordController.text) {
                          return 'Passwords do not match';
                        }
                        return null;
                      },
                      enabled: !state.isSubmitting,
                    ),
                    Gap(16.h),
                    // Avatar selection
                    Gap(20.h),
                    BlocBuilder<RegisterBloc, RegisterState>(
                      builder: (context, state) {
                        return Column(
                          children: [
                            GestureDetector(
                              onTap: () => _pickImage(context),
                              child: CircleAvatar(
                                radius: 50.r,
                                backgroundColor: Colors.grey[200],
                                child:
                                    state.avatarBytes != null
                                        ? ClipOval(
                                          child: Image.memory(
                                            state.avatarBytes!,
                                            width: 100.r,
                                            height: 100.r,
                                            fit: BoxFit.cover,
                                          ),
                                        )
                                        : Icon(
                                          Icons.camera_alt,
                                          color: Colors.grey[800],
                                          size: 50.r,
                                        ),
                              ),
                            ),
                            Gap(8.h),
                            Text(
                              state.avatarFile != null ? "" : 'Select Avatar',
                              style: TextStyle(fontSize: 12.sp),
                            ),
                          ],
                        );
                      },
                    ),
                    Gap(20.h),
                    if (state.isSubmitting)
                      const Center(child: CircularProgressIndicator())
                    else
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(vertical: 12.h),
                          textStyle: TextStyle(fontSize: 16.sp),
                          // Disable button if form is not valid, handled by RegisterBloc's isFormValid or local validation
                        ),
                        onPressed: () => _onRegisterPressed(context),
                        child: const Text('Register'),
                      ),
                    Gap(16.h),
                    TextButton(
                      onPressed:
                          state.isSubmitting
                              ? null
                              : () {
                                if (AutoRouter.of(context).routeData.name !=
                                    LoginRoute.name) {
                                  context.router.replace(const LoginRoute());
                                }
                              },
                      child: const Text('Already have an account? Login'),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
