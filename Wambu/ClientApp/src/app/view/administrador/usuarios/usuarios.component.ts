import { Component, OnInit } from '@angular/core';
import { AuxiliaresService } from 'src/app/metodos/auxiliares/auxiliares.service';
import { GlobalessService } from 'src/app/metodos/globales/globaless.service';
import { ApiService } from 'src/app/servicios/api/api.service';
import { SesionService } from 'src/app/servicios/sesion/sesion.service';
declare var $: any;
@Component({
  selector: 'app-usuarios',
  templateUrl: './usuarios.component.html',
  styleUrls: ['./usuarios.component.css']
})
export class UsuariosComponent implements OnInit {

 
  fmrDatos = { fmrMenu: {}, fmrFooter: {} };
  lstUsuarios = [];
  fmrUsuario = {
    identificador: 0,
    idUsuario: 0,
    email: '',
    contrasena: 'Qw12345678',
    rol: '',
    estado: 0,
  }

  constructor(private api: SesionService, private datos: AuxiliaresService, private globales: GlobalessService, private sesion: ApiService) { }

  ngOnInit() {
    this.obtenerContenido();
  }

  obtenerContenido() {
    this.datos.datosPagina().then(res_ => {
      res_;
      this.fmrDatos = res_;
      this.obtenerUsuarios();
    }).catch(err => {
      console.log(err);
    });
  }

  obtenerUsuarios() {
    this.api.get("Datos/obtenerUsuarios", "").subscribe(
      (res: any) => {
        this.lstUsuarios = res;
        console.log(this.lstUsuarios);

      },
      err => {
        console.log(err);
      }
    );
  }

  datosModificar(datos) {
    this.fmrUsuario = datos;
  }

  guardar() {
    if (this.fmrUsuario.idUsuario == 0) {
      this.fmrUsuario.identificador = 1;
    } else {
      this.fmrUsuario.identificador = 2;
    }
    console.log(this.fmrUsuario)
    this.api.post("Datos/gestionUsuario", this.fmrUsuario).subscribe(
      (res: any) => {
        console.log(res);
        $('#AddProducto').modal('toggle');
        this.globales.mostarNotificacion("Registro guardado correctamente", "success");
        this. fmrUsuario = {
          identificador: 0,
          idUsuario: 0,
          email: '',
          contrasena: '',
          rol: '',
          estado: 0,
        }
        this.obtenerUsuarios();

      },
      err => {
        console.log(err);
      }
    );
  }

}
