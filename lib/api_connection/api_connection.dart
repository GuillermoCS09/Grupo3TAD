// class API{
//   static const hostConnect = 'http://192.168.0.101/API/conexion.php';
//   static const consultalogin = 'http://192.168.0.101/API/consultalogin.php';
//   static const consultasalones = 'http://192.168.0.101/API/consultasalones.php';
//   static const consultadisponibilidades = 'http://192.168.0.101/API/consultadisponibilidades.php';
//   static const updateperfil = 'http://192.168.0.101/API/updateperfil.php';
//   static const consultareservas = 'http://192.168.0.101/API/consultareservas.php';
//   static const updatereservas = 'http://192.168.0.101/API/updatereservas.php';
//   static const insertarreservas = 'http://192.168.0.101/API/insertarreservas.php';
//   static const updatedisponibilidadreservar = 'http://192.168.0.101/API/updatedisponibilidadreservar.php';
//   static const updatedisponibilidadcancelar = 'http://192.168.0.101/API/updatedisponibilidadcancelar.php';
//   static const updatevisitas = 'http://192.168.0.101/API/updatevisitas.php';
//   static const obtenerdatosprediccion = 'http://192.168.0.101/API/obtenerdatosprediccion.php';
// }

class API {
  // Instancia única de la clase
  static API? _instancia;

  // URLs
  final String hostConnect = 'http://192.168.0.101/API/conexion.php';
  final String consultalogin = 'http://192.168.0.101/API/consultalogin.php';
  final String consultasalones = 'http://192.168.0.101/API/consultasalones.php';
  final String consultadisponibilidades = 'http://192.168.0.101/API/consultadisponibilidades.php';
  final String updateperfil = 'http://192.168.0.101/API/updateperfil.php';
  final String consultareservas = 'http://192.168.0.101/API/consultareservas.php';
  final String updatereservas = 'http://192.168.0.101/API/updatereservas.php';
  final String insertarreservas = 'http://192.168.0.101/API/insertarreservas.php';
  final String updatedisponibilidadreservar = 'http://192.168.0.101/API/updatedisponibilidadreservar.php';
  final String updatedisponibilidadcancelar = 'http://192.168.0.101/API/updatedisponibilidadcancelar.php';
  final String updatevisitas = 'http://192.168.0.101/API/updatevisitas.php';
  final String obtenerdatosprediccion = 'http://192.168.0.101/API/obtenerdatosprediccion.php';

  // Constructor privado para evitar instanciación directa
  API._();

  // Método estático para obtener la instancia única
  static API obtenerInstancia() {
    _instancia ??= API._();
    return _instancia!;
  }
}