import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo_app/src/models/todo_item_model.dart';
import 'package:todo_app/src/services/hive_db_service.dart';
import 'package:todo_app/src/ui/dialogs/edit_todo_dialog.dart';

class PageHome extends StatefulWidget {
  const PageHome({super.key});

  @override
  State<PageHome> createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  Box<TodoItemModel>? box;
  @override
  void initState() {
    super.initState();
    Future.microtask(() async {
      await HiveDBService.initService();
      box = await HiveDBService.openBox<TodoItemModel>();
      if (mounted) {
        setState(() {});
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: () async {
          final response = await DialogEditTodo.show(context, null);
          if (response != null) {
            HiveDBService.addToBox(box!, response);
          }
        }),
        body: FutureBuilder(
            future: HiveDBService.serviceStarted.future,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                if (box != null) {
                  // return const CircularProgressIndicator();

                  return ValueListenableBuilder(
                      valueListenable: box!.listenable(),
                      builder: (context, box, child) {
                        return ListView.builder(
                            itemCount: box.length,
                            itemBuilder: (context, index) {
                              final element = box.values.elementAt(index);

                              return Dismissible(
                                onDismissed: (e) {
                                  HiveDBService.remove(box, index);
                                },
                                key: Key(element.createdAt.toIso8601String()),
                                child: ListTile(
                                  leading: Checkbox(
                                      value: element.checked,
                                      onChanged: (e) {
                                        element.checked = !element.checked;
                                        HiveDBService.update(
                                            box, index, element);
                                      }),
                                  title: Text(
                                    element.title,
                                    style: TextStyle(
                                        decoration: element.checked
                                            ? TextDecoration.lineThrough
                                            : TextDecoration.none),
                                  ),
                                  trailing: IconButton(
                                      onPressed: () async {
                                        final response =
                                            await DialogEditTodo.show(
                                                context, element);
                                        if (response != null) {
                                          HiveDBService.update(
                                              box, index, response);
                                        }
                                      },
                                      icon: const Icon(Icons.edit)),
                                ),
                              );
                            });
                      });
                }
              }
              return const Text('Loading');
            }));
  }
}
