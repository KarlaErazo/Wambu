using Microsoft.VisualStudio.TestTools.UnitTesting;
using Wambu_Dao.Modelo;
using Wambu_Dto.Entidades;

namespace Test
{
    [TestClass]
    public class LoginTest
    {
        [TestMethod]
        public void SiEmailEsVacio()
        {
            var usuario = new Usuario() { Email = string.Empty };
            var servicio = MUsuario.iniciarSesionVM(usuario);

            Assert.AreEqual(204, servicio.Code);
        }

        [TestMethod]
        public void SiEmailEsIncorrecto()
        {
            var usuario = new Usuario() { Email = "test.ec" };

            var servicio = MUsuario.iniciarSesionVM(usuario);

            Assert.AreEqual(204, servicio.Code);
        }

        [TestMethod]
        public void SiContrasenaEsVacio()
        {
            var usuario = new Usuario() { Contrasena = string.Empty };
            var servicio = MUsuario.iniciarSesionVM(usuario);

            Assert.AreEqual(204, servicio.Code);
        }

        [TestMethod]
        public void SiCredencialesNoSonCorrectas()
        {
            var usuario = new Usuario() { Email = "test@gmail.com", Contrasena = "123" };
            var servicio = MUsuario.iniciarSesionVM(usuario);

            Assert.AreEqual(204, servicio.Code);
        }

        [TestMethod]
        public void ProcesoCorrectoLogin()
        {
            var usuario = new Usuario() { Email = "paul@gmail.com", Contrasena = "12345" };

            var servicio = MUsuario.iniciarSesionVM(usuario);

            Assert.AreEqual(200, servicio.Code);
        }
    }
}
