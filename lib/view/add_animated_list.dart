import 'package:flutter/material.dart';

class AddAnimatedList extends  StatefulWidget {
  const AddAnimatedList({super.key});

  @override
  State<AddAnimatedList> createState() => _AddAnimatedListState();
}

class _AddAnimatedListState extends State<AddAnimatedList> {

  GlobalKey<AnimatedListState> listKey =GlobalKey<AnimatedListState>();

  List<String> list =[];

  void addItem()
  {
    setState(() {

      list.insert(0, 'New Item ${list.length}');
      listKey.currentState?.insertItem(0);
    });
  }

  void removeItem(int index)
  {
    setState(() {
      list.removeAt(index);
      listKey.currentState?.removeItem(index,
        duration: const Duration(milliseconds: 100),
        (context, animation)  {
        return const ListTile(
          textColor: Colors.red,
          leading: Text('😝'),
          title: Text('Deleted'),
        );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title:  const Text(
          'Add Animated LList',
          style: TextStyle(
            color: Colors.amber,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: AnimatedList(
        key: listKey,
        itemBuilder: (BuildContext context, int index, Animation<double> animation)
        {
          return SizeTransition(
              sizeFactor: animation,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(12, 12, 12, 20),
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: Colors.blueGrey,
                    width: 2
                  ),
                ),
                child: ListTile(
                  leading: const Text(
                    '😎',
                    style: TextStyle(
                      fontSize: 18
                    ),
                  ),
                  title: Text(
                    list[index],
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                  trailing: IconButton(
                    onPressed: ()
                    {
                      removeItem(index);
                    },
                    icon: const Icon(
                      Icons.delete,
                      color: Colors.amber,
                        size: 22,
                    ),
                  ),
                ),
              ),
            ),
          );
        },

      ),
      floatingActionButton: FloatingActionButton(
        onPressed:addItem,
        child: const Icon(
          Icons.add,
          size: 30,
          color: Colors.amber,
        ),
      ),
    );
  }
}
