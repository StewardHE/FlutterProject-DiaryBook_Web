import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String? _dropDownText;
  @override
  Widget build(BuildContext context) {
    // this will make the navbar
    return Scaffold(
        appBar: AppBar(
      backgroundColor: Colors.grey.shade100,
      toolbarHeight: 100,
      elevation: 4, // this add the shadown to the navbar

      // this add the logo DiaryBook in the navbar
      title: Row(children: [
        Text(
          'Diary',
          style: TextStyle(fontSize: 39, color: Colors.blueGrey.shade400),
        ),
        Text(
          'Book',
          style: TextStyle(fontSize: 39, color: Colors.green),
        )
      ]),

      // dropdown menu

      actions: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DropdownButton<String>(
                items: <String>['Latest', 'Earliest'].map((String value) {
                  return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value, // this is the value of the selecter, for defect it is Empty
                        style: TextStyle(color: Colors.grey),
                      ));
                }).toList(),

                // this make that if the dropdownText is null or empty,
                // Show 'Select' in the bottom of the page
                // But if already selected Latest of earliest, show them
                // Or
                //If no option has been selected in the button,
                // 'Select' will appear, but if there is already an option selected,
                // the selected option will appear
                hint: (_dropDownText == null)
                    ? Text('Select')
                    : Text(_dropDownText!),
                onChanged: (value) {
                  // check the state
                  if (value == 'Latest') {
                    setState(() {
                      _dropDownText = value;
                    });
                  } else if (value == 'Earliest') {
                    setState(() {
                      _dropDownText = value;
                    });
                  }
                },
              ),
            ),

            // This will make the avatar Circle
            Container(
              child: Row(
                children: [
                  Column(
                    children: [
                      Expanded(
                          child: InkWell(
                        child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage(
                                  'https://picsum.photos/id/237/200/300'),
                              backgroundColor: Colors.transparent,
                            )),
                      )),
                      // This add the name under the user photo
                      Text(
                        'James',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  // this will add the Logout Button
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.logout_outlined,
                        size: 19,
                        color: Colors.red,
                      ))
                ],
              ),
            )
          ],
        ),
      ],
    ));
  }
}
