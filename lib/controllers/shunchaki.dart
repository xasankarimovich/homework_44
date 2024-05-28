import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Map<String, String>> employees = [];
  List<Map<String, String>> products = [];
  List<Map<String, String>> companies = [];

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final Map<String, String> _formData = {};

  void _addData(String type) {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      setState(() {
        if (type == 'employee') {
          employees.add({..._formData});
        } else if (type == 'product') {
          products.add({..._formData});
        } else if (type == 'company') {
          companies.add({..._formData});
        }
      });
      Navigator.of(context).pop();
    }
  }

  void _showForm(String type) {
    showModalBottomSheet(
      context: context,
      builder: (_) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                if (type == 'employee') ...[
                  TextFormField(
                    decoration: InputDecoration(labelText: 'First Name'),
                    onSaved: (value) {
                      _formData['firstName'] = value!;
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter a first name.';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Last Name'),
                    onSaved: (value) {
                      _formData['lastName'] = value!;
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter a last name.';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Position'),
                    onSaved: (value) {
                      _formData['position'] = value!;
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter a position.';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Department'),
                    onSaved: (value) {
                      _formData['department'] = value!;
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter a department.';
                      }
                      return null;
                    },
                  ),
                ] else if (type == 'product') ...[
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Product Name'),
                    onSaved: (value) {
                      _formData['productName'] = value!;
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter a product name.';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Category'),
                    onSaved: (value) {
                      _formData['category'] = value!;
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter a category.';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Price'),
                    onSaved: (value) {
                      _formData['price'] = value!;
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter a price.';
                      }
                      return null;
                    },
                  ),
                ] else if (type == 'company') ...[
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Company Name'),
                    onSaved: (value) {
                      _formData['companyName'] = value!;
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter a company name.';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Address'),
                    onSaved: (value) {
                      _formData['address'] = value!;
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter an address.';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Phone'),
                    onSaved: (value) {
                      _formData['phone'] = value!;
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter a phone number.';
                      }
                      return null;
                    },
                  ),
                ],
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () => _addData(type),
                  child: Text('Save'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildList(String type) {
    List<Map<String, String>> data;
    if (type == 'employee') {
      data = employees;
    } else if (type == 'product') {
      data = products;
    } else {
      data = companies;
    }

    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (ctx, index) {
        return ListTile(
          title: Text(data[index].values.join(' - ')),
          trailing: IconButton(
            icon: Icon(Icons.delete),
            onPressed: () {
              setState(() {
                data.removeAt(index);
              });
            },
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Company Management'),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Employees'),
              Tab(text: 'Products'),
              Tab(text: 'Companies'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Column(
              children: [
                ElevatedButton(
                  onPressed: () => _showForm('employee'),
                  child: Text('Add Employee'),
                ),
                Expanded(
                  child: _buildList('employee'),
                ),
              ],
            ),
            Column(
              children: [
                ElevatedButton(
                  onPressed: () => _showForm('product'),
                  child: Text('Add Product'),
                ),
                Expanded(
                  child: _buildList('product'),
                ),
              ],
            ),
            Column(
              children: [
                ElevatedButton(
                  onPressed: () => _showForm('company'),
                  child: Text('Add Company'),
                ),
                Expanded(
                  child: _buildList('company'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
