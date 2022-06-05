import 'package:flutter/material.dart';

class AddTaskSheet extends StatefulWidget {
  final Function onSubmitted;
  const AddTaskSheet({required this.onSubmitted});

  @override
  State<AddTaskSheet> createState() => _AddTaskSheetState();
}

class _AddTaskSheetState extends State<AddTaskSheet> {
  TextEditingController _controller = TextEditingController();
  String description = '';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          color: const Color(0xff757575),
          child: Container(
            padding: EdgeInsets.only(
              top: 12.0,
              left: 32.0,
              right: 32.0,
              bottom: MediaQuery.of(context).viewInsets.bottom + 30.0,
            ),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(18.0),
                    topRight: Radius.circular(18.0))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Add Task',
                    style: TextStyle(
                        fontSize: 28.0, color: Colors.orange.shade400)),
                TextField(
                  autofocus: true,
                  onChanged: (value) => setState(() => description = value),
                  decoration: InputDecoration(
                    hintText: 'New task',
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.orange.shade300, width: 1.0)),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.orange.shade300, width: 3.0)),
                  ),
                ),
                const SizedBox(height: 12.0),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        if (description.isNotEmpty) {
                          widget.onSubmitted(description);
                          Navigator.pop(context);
                        }
                        _controller.clear();
                        description = '';
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange.shade300,
                      ),
                      child: Text('Add')),
                ),
              ],
            ),
          )),
    );
  }
}
