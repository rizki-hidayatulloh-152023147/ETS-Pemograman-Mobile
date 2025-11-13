import 'package:flutter/material.dart';

class Contact {
  final String name;
  final String phone;
  final Color color;

  Contact({required this.name, required this.phone, required this.color});
}

class KontakFragment extends StatelessWidget {
  const KontakFragment({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Contact> contacts = [
      Contact(name: 'mamah kunci surga', phone: '0812-3456-7890', color: Colors.blue),
      Contact(name: 'ayah sumber rezeki', phone: '0813-4567-8901', color: Colors.green),
      Contact(name: 'arpin bka', phone: '0814-5678-9012', color: Colors.orange),
      Contact(name: 'epul tik', phone: '0815-6789-0123', color: Colors.purple),
      Contact(name: 'alan r15', phone: '0816-7890-1234', color: Colors.pink),
      Contact(name: 'abuy cisarua tiriz', phone: '0817-8901-2345', color: Colors.teal),
      Contact(name: 'martin rayap besi', phone: '0818-9012-3456', color: Colors.indigo),
      Contact(name: 'ipal uber', phone: '0819-0123-4567', color: Colors.red),
      Contact(name: 'pasha petet', phone: '0821-1234-5678', color: Colors.cyan),
      Contact(name: 'opal  behel', phone: '0822-2345-6789', color: Colors.amber),
      Contact(name: 'keza cegil', phone: '0823-3456-7890', color: Colors.deepOrange),
      Contact(name: 'ilham kalcer', phone: '0824-4567-8901', color: Colors.lime),
      Contact(name: 'bah firja', phone: '0825-5678-9012', color: Colors.brown),
    ];

    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          color: Colors.deepPurple,
          child: Row(
            children: [
              const Icon(Icons.contacts, color: Colors.white),
              const SizedBox(width: 10),
              Text(
                'Daftar Kontak (${contacts.length})',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: contacts.length,
            itemBuilder: (context, index) {
              final contact = contacts[index];
              return Card(
                color: Color(0xFF2D3250),
                margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                elevation: 2,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: contact.color,
                    child: Text(
                      contact.name[0].toUpperCase(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  title: Text(
                    contact.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  subtitle: Row(
                    children: [
                      const Icon(Icons.phone, size: 14, color: Colors.white70),
                      const SizedBox(width: 5),
                      Text(
                        contact.phone,
                        style: const TextStyle(color: Colors.white70),
                      ),
                    ],
                  ),
                  trailing: IconButton(
                    icon: const Icon(Icons.call, color: Colors.green),
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Menghubungi ${contact.name}...'),
                        ),
                      );
                    },
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}