import { Component, OnInit } from '@angular/core';
import { AuxiliaresService } from 'src/app/metodos/auxiliares/auxiliares.service';
import { GlobalessService } from 'src/app/metodos/globales/globaless.service';
import { ApiService } from 'src/app/servicios/api/api.service';
import { SesionService } from 'src/app/servicios/sesion/sesion.service';
declare var $: any;
@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {
  div = {
    login: true,
    register: false
  }
  fmrDatos = { fmrMenu: {}, fmrFooter: {} };
  frmLogin = {
    Email: '',
    Contrasena: ''
  }
  fmrRegistro = {
    Identificador: 1,
    IdUsuario: 0,
    Email: '',
    Contrasena: '',
    Contrasena2: '',
    Rol: 'USUARIO'
  }

  constructor(private api: SesionService, private datos: AuxiliaresService, private globales: GlobalessService, private sesion: ApiService) { }


  ngOnInit() {
    this.obtenerContenido();
  }

  obtenerContenido() {

    this.datos.datosPagina().then(res_ => {
      res_;
      this.fmrDatos = res_
    }).catch(err => {
      console.log(err);
    });
  }

  iniciarSesion() {
   
    if(this.globales.validarEmail(this.frmLogin.Email)){
      this.globales.mostarAlerta("Inicio Sesión", "Ingrese un correo electrónico válido", "warning");
    }else if(this.frmLogin.Contrasena == ""){
      this.globales.mostarAlerta("Inicio Sesión", "Ingrese una contraseña", "warning");
    }else{
      this.api.post("Datos/iniciarSesion", this.frmLogin).subscribe(
        (res: any) => {
          if (res.idUsuario == 0) {
            this.globales.mostarNotificacion("Credenciales Incorrectas", "warning");
          } else {
            this.frmLogin = {
              Email: '',
              Contrasena: ''
            }
            this.sesion.iniciarSesion(res);
          }
          console.log(res);
  
        },
        err => {
          console.log(err);
        }
      );
    }
  
  }

  registro() {
    if(this.globales.validarEmail(this.fmrRegistro.Email)){
      this.globales.mostarAlerta("Registro", "Ingrese un correo electrónico válido", "warning");
    }else if(this.fmrRegistro.Contrasena == ""){
      this.globales.mostarAlerta("Registro", "Ingrese una contraseña", "warning");
    }else if(this.fmrRegistro.Contrasena2 == ""){
      this.globales.mostarAlerta("Registro", "Ingrese nuevamente la contraseña", "warning");
    }else if(this.fmrRegistro.Contrasena != this.fmrRegistro.Contrasena2){
      this.globales.mostarAlerta("Registro", "Las contraseñas no coinciden", "warning");
    }else{
      this.api.post("Datos/gestionUsuario", this.fmrRegistro).subscribe(
        (res: any) => {
          this.globales.mostarNotificacion("Registro Exitoso", "success");
          this.cambioDiv(1);
          this.fmrRegistro = {
            Identificador: 1,
            IdUsuario: 0,
            Email: '',
            Contrasena: '',
            Contrasena2: '',
            Rol: 'USUARIO'
          }
        },
        err => {
          console.log(err);
        }
      );
    }
    
  }

  cambioDiv(tipo) {
    if (tipo == 1) {
      this.div = {
        login: true,
        register: false
      }
      $("#login").addClass("active");
      $("#registro").removeClass("active");
    } else if (tipo == 2) {
      this.div = {
        login: false,
        register: true
      }
      $("#registro").addClass("active");
      $("#login").removeClass("active");
    }
  }
}
