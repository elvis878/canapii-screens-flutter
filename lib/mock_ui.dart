import 'package:canapii_app_flutter/utils/routing_constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'common/themes.dart';

class MockUI extends StatelessWidget {
  const MockUI({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Canapii'),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_rounded)
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              ListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: <Widget>[
                  ListTile(
                    leading: Icon(themeProvider.isDarkMode ? Icons.dark_mode_rounded : Icons.dark_mode_outlined),
                    title: const Text('Dark mode'),
                    trailing: Switch.adaptive(
                      value: themeProvider.isDarkMode,
                      onChanged: (isDarkOn) {
                        final provider = Provider.of<ThemeProvider>(context, listen: false);
                        provider.toggleTheme(isDarkOn);
                      }
                    ),
                  ),
                  const ListTile(
                    title: Text(
                      'Pages',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w700
                      ),
                    ),
                  ),
                  ListTile(
                    leading: const Icon(Icons.login_rounded),
                    title: const Text('Login'),
                    onTap: () => {
                      Navigator.pushNamed(context, loginRoute)
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.lock_rounded),
                    title: const Text('Forgot Password'),
                    onTap: () => {
                      Navigator.pushNamed(context, 'test')
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.key_rounded),
                    title: const Text('Change Password'),
                    onTap: () => {},
                  ),
                  ListTile(
                    leading: const Icon(Icons.edit_note_rounded),
                    title: const Text('Register'),
                    onTap: () => {},
                  ),
                  ListTile(
                    leading: const Icon(Icons.password_rounded),
                    title: const Text('MFA'),
                    onTap: () => {},
                  ),
                ],
              ),
              ElevatedButton(onPressed: () => {}, child: const Text('Click me')),
            ]
          ),
        ),
      )
    );
  }
}
