import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class AddDegreePage extends StatefulWidget {
  @override
  _AddDegreePageState createState() => _AddDegreePageState();
}

class _AddDegreePageState extends State<AddDegreePage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _universityController = TextEditingController();
  final TextEditingController _durationController = TextEditingController();

  Future<void> _addDegree() async {
    if (_formKey.currentState!.validate()) {
      await FirebaseFirestore.instance.collection('degrees').add({
        'name': _nameController.text,
        'university': _universityController.text,
        'duration': int.parse(_durationController.text),
        'createdAt': Timestamp.now(),
      });

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Degree Added Successfully!')),
      );

      Navigator.pop(context); // Go back after adding the degree
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add Degree')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(labelText: 'Degree Name'),
                validator: (value) =>
                    value!.isEmpty ? 'Please enter a degree name' : null,
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: _universityController,
                decoration: InputDecoration(labelText: 'University'),
                validator: (value) =>
                    value!.isEmpty ? 'Please enter university name' : null,
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: _durationController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: 'Duration (years)'),
                validator: (value) {
                  if (value!.isEmpty) return 'Please enter duration';
                  if (int.tryParse(value) == null) return 'Enter a valid number';
                  return null;
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _addDegree,
                child: Text('Add Degree'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
