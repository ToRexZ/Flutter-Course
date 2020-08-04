import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  final Function addTx;

  NewTransaction(this.addTx);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                  labelText: 'Title',
                  labelStyle: TextStyle(color: Colors.purple),
                  hintText: 'Groceries',
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.purple, width: 2),
                  )),
              controller: titleController,
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: 'Amount',
                  labelStyle: TextStyle(color: Colors.purple),
                  hintText: '29.99',
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.purple, width: 2),
                  )),
              controller: amountController,
              // onChanged: (value) => amountInput = value,
            ),
            FlatButton(
              onPressed: () {
                addTx(
                    titleController.text, double.parse(amountController.text));
              },
              child: Text(
                'Add Transaction',
              ),
              textColor: Colors.white,
              color: Colors.purple,
            )
          ],
        ),
      ),
    );
  }
}
