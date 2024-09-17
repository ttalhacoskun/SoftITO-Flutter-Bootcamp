import 'package:flutter/material.dart';
import 'package:todo_app/src/models/todo_item_model.dart';

class DialogEditTodo extends StatelessWidget {
  TodoItemModel? model;
  DialogEditTodo._({super.key, this.model}) {
    title = model?.title ?? '';
  }

  static Future<TodoItemModel?> show(
      BuildContext context, TodoItemModel? data) async {
    return await showDialog<TodoItemModel>(
        context: context, builder: (context) => DialogEditTodo._(model: data));
  }

  final formKey = GlobalKey<FormState>();

  var title = '';

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.black.withOpacity(.75)),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              TextFormField(
                onChanged: (e) => title = e,
                validator: (e) => (e?.isEmpty ?? true) ? 'bos olamaz' : null,
              ),
              ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      model ??= TodoItemModel.empty();
                      model!.title = title;
                      Navigator.pop(context, model);
                    }
                  },
                  child: const Text('kaydet'))
            ],
          ),
        ),
      ),
    );
  }
}
