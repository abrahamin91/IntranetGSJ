using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SignalRTest.MuralSJ
{
    public class Usuarios
    {
        private string usuario;
        private string contrasena;

        public Usuarios()
        {
            usuario = string.Empty;
            contrasena = string.Empty;
        }

        public string Usuario
        {
            get {return this.usuario;}
            set { this.usuario = value; }
        }

        public string Contrasena
        {
            get { return this.contrasena; }
            set { this.contrasena = value; }
        }
        public static int inicio_sesion(string u, string c)  
        {
            int credenciales = SignalRTest.Database.General.Monitoreo.obtieneCredendiales_m("login_usuario", u, c);
            return credenciales;
        }

    }
}