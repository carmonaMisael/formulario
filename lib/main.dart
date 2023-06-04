import 'package:flutter/material.dart';

void main() => runApp(AppHeladeria());

class AppHeladeria extends StatelessWidget {
  const AppHeladeria({super.key});
  static const String _title = 'Drawer en Flutter';
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Heladeria(),
    );
  }
}

class Heladeria extends StatefulWidget {
  const Heladeria({super.key});
  @override
  _HeladeriaState createState() => _HeladeriaState();
}

TextEditingController nameCtrl = new TextEditingController();
TextEditingController emailCtrl = new TextEditingController();
TextEditingController mobileCtrl = new TextEditingController();
TextEditingController passwordCtrl = new TextEditingController();
TextEditingController repeatPassCtrl = new TextEditingController();

class _HeladeriaState extends State<Heladeria> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Heladeria Carmona's"),
        backgroundColor: const Color(0xffff7300),
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
              // <-- SEE HERE
              decoration: BoxDecoration(color: const Color(0xffff7300)),
              accountName: Text(
                "Misael Carmona Santana",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              accountEmail: Text(
                "carmoanmisael1@gmail.com",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              //currentAccountPicture: FlutterLogo(),
            ),
            ListTile(
              leading: Icon(
                Icons.icecream,
              ),
              title: const Text('Helados'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.no_drinks,
              ),
              title: const Text('Malteadas'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.fire_truck,
              ),
              title: const Text('Sucursal'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: DefaultTabController(
        length: 4,
        child: Column(
          children: <Widget>[
            TabBar(
              indicatorColor: Color(0xfff66025),
              tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.people, color: Colors.black),
                  child: Text(
                    'Usuarios',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                Tab(
                  icon: Icon(Icons.icecream, color: Colors.black),
                  child: Text(
                    'Articulos',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                Tab(
                  icon: Icon(Icons.verified_user, color: Colors.black),
                  child: Text(
                    'Empleados',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                Tab(
                  icon: Icon(Icons.casino, color: Colors.black),
                  child: Text(
                    'Venta',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 25),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: 'Codigo del cliente',
                              prefixIcon: Icon(
                                Icons.add,
                                color: Color(0xff694e04),
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 25),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: 'Ingrese su nombre',
                              prefixIcon: Icon(
                                Icons.insert_invitation_outlined,
                                color: Color(0xff694e04),
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 25),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: 'Ingrese su apellido',
                              prefixIcon: Icon(
                                Icons.add_comment,
                                color: Color(0xff694e04),
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 25),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: 'Correo',
                              prefixIcon: Icon(
                                Icons.email,
                                color: Color(0xff694e04),
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 25),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: 'Telefono',
                              prefixIcon: Icon(
                                Icons.phone,
                                color: Color(0xff694e04),
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 25),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: 'Direccion',
                              prefixIcon: Icon(
                                Icons.gps_fixed,
                                color: Color(0xff694e04),
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 25),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: 'Fecha de nacimiento',
                              prefixIcon: Icon(
                                Icons.calendar_month,
                                color: Color(0xff694e04),
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: Center(
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  const Color(
                                      0xfff66025)), // Cambia el color de fondo del botón
                              padding:
                                  MaterialStateProperty.all<EdgeInsetsGeometry>(
                                const EdgeInsets.symmetric(
                                    horizontal:
                                        20.0), // Ajusta el relleno horizontal del botón
                              ),
                              minimumSize: MaterialStateProperty.all<Size>(
                                const Size(
                                    120, 50), // Ajusta el ancho del botón aquí
                              ),
                              // Añade más propiedades de estilo según tus necesidades, como el tamaño de fuente, el color de texto, etc.
                            ),
                            child: const Text('Registrarse',
                                style: TextStyle(color: Colors.white)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 25),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: 'Codigo del producto',
                              prefixIcon: Icon(
                                Icons.add,
                                color: Color(0xff694e04),
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 25),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: 'Nombre del articulo',
                              prefixIcon: Icon(
                                Icons.insert_invitation_outlined,
                                color: Color(0xff694e04),
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 25),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: 'Tamaño del articulo',
                              prefixIcon: Icon(
                                Icons.add_comment,
                                color: Color(0xff694e04),
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 25),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: 'Precio',
                              prefixIcon: Icon(
                                Icons.money,
                                color: Color(0xff694e04),
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 25),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: 'Descripcion',
                              prefixIcon: Icon(
                                Icons.text_format,
                                color: Color(0xff694e04),
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 25),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: 'Categoria',
                              prefixIcon: Icon(
                                Icons.gps_fixed,
                                color: Color(0xff694e04),
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 25),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: 'Cantidad',
                              prefixIcon: Icon(
                                Icons.add,
                                color: Color(0xff694e04),
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: Center(
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  const Color(
                                      0xfff66025)), // Cambia el color de fondo del botón
                              padding:
                                  MaterialStateProperty.all<EdgeInsetsGeometry>(
                                const EdgeInsets.symmetric(
                                    horizontal:
                                        20.0), // Ajusta el relleno horizontal del botón
                              ),
                              minimumSize: MaterialStateProperty.all<Size>(
                                const Size(
                                    120, 50), // Ajusta el ancho del botón aquí
                              ),
                              // Añade más propiedades de estilo según tus necesidades, como el tamaño de fuente, el color de texto, etc.
                            ),
                            child: const Text('Enviar',
                                style: TextStyle(color: Colors.white)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 25),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: 'Codigo del empleado',
                              prefixIcon: Icon(
                                Icons.add,
                                color: Color(0xff694e04),
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 25),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: 'Ingrese su nombre',
                              prefixIcon: Icon(
                                Icons.insert_invitation_outlined,
                                color: Color(0xff694e04),
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 25),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: 'Ingrese su apellido',
                              prefixIcon: Icon(
                                Icons.add_comment,
                                color: Color(0xff694e04),
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 25),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: 'Correo',
                              prefixIcon: Icon(
                                Icons.email,
                                color: Color(0xff694e04),
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 25),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: 'Telefono',
                              prefixIcon: Icon(
                                Icons.phone,
                                color: Color(0xff694e04),
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 25),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: 'Hora de entrada',
                              prefixIcon: Icon(
                                Icons.alarm,
                                color: Color(0xff694e04),
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 25),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: 'Hora de salida',
                              prefixIcon: Icon(
                                Icons.alarm,
                                color: Color(0xff694e04),
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: Center(
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  const Color(
                                      0xfff66025)), // Cambia el color de fondo del botón
                              padding:
                                  MaterialStateProperty.all<EdgeInsetsGeometry>(
                                const EdgeInsets.symmetric(
                                    horizontal:
                                        20.0), // Ajusta el relleno horizontal del botón
                              ),
                              minimumSize: MaterialStateProperty.all<Size>(
                                const Size(
                                    120, 50), // Ajusta el ancho del botón aquí
                              ),
                              // Añade más propiedades de estilo según tus necesidades, como el tamaño de fuente, el color de texto, etc.
                            ),
                            child: const Text('Enviar',
                                style: TextStyle(color: Colors.white)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 25),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: 'Codigo de la venta',
                              prefixIcon: Icon(
                                Icons.add,
                                color: Color(0xff694e04),
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 25),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: 'Nombre del Cliente',
                              prefixIcon: Icon(
                                Icons.insert_invitation_outlined,
                                color: Color(0xff694e04),
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 25),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: 'Nombre del empleado',
                              prefixIcon: Icon(
                                Icons.verified_user,
                                color: Color(0xff694e04),
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 25),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: 'Nombre de la sucursal',
                              prefixIcon: Icon(
                                Icons.email,
                                color: Color(0xff694e04),
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 25),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: 'Telefono',
                              prefixIcon: Icon(
                                Icons.phone,
                                color: Color(0xff694e04),
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 25),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: 'Fecha de venta',
                              prefixIcon: Icon(
                                Icons.calendar_month,
                                color: Color(0xff694e04),
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 25),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: 'Hora de venta',
                              prefixIcon: Icon(
                                Icons.alarm,
                                color: Color(0xff694e04),
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: Center(
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  const Color(
                                      0xfff66025)), // Cambia el color de fondo del botón
                              padding:
                                  MaterialStateProperty.all<EdgeInsetsGeometry>(
                                const EdgeInsets.symmetric(
                                    horizontal:
                                        20.0), // Ajusta el relleno horizontal del botón
                              ),
                              minimumSize: MaterialStateProperty.all<Size>(
                                const Size(
                                    120, 50), // Ajusta el ancho del botón aquí
                              ),
                              // Añade más propiedades de estilo según tus necesidades, como el tamaño de fuente, el color de texto, etc.
                            ),
                            child: const Text('Eviar',
                                style: TextStyle(color: Colors.white)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
