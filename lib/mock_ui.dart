import 'package:flutter/material.dart';
import 'common/themes.dart';

class MockUI extends StatefulWidget {
  const MockUI({
    Key? key,
  }) : super(key: key);

  @override
  State<MockUI> createState() => _MockUIState();
}

class _MockUIState extends State<MockUI> {
  @override
  Widget build(BuildContext context) {
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
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView(
              children: <Widget>[
                ListTile(
                  leading: Icon(canapiiTheme.isDarkMode ? Icons.dark_mode_rounded : Icons.dark_mode_outlined),
                  title: const Text('Dark mode'),
                  trailing: Switch.adaptive(
                    value: canapiiTheme.isDarkMode,
                    onChanged: (isDarkOn) => canapiiTheme.toggleTheme(isDarkOn)
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
                  onTap: () => {},
                ),
                ListTile(
                  leading: const Icon(Icons.lock_rounded),
                  title: const Text('Forgot Password'),
                  onTap: () => {},
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
          ),
        ]
      )
    );
  }
}
