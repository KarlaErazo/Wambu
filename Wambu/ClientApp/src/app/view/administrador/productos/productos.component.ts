import { Component, OnInit } from '@angular/core';
import { AuxiliaresService } from 'src/app/metodos/auxiliares/auxiliares.service';
import { GlobalessService } from 'src/app/metodos/globales/globaless.service';
import { ApiService } from 'src/app/servicios/api/api.service';
import { SesionService } from 'src/app/servicios/sesion/sesion.service';
declare var $: any;

@Component({
  selector: 'app-productos-admin',
  templateUrl: './productos.component.html',
  styleUrls: ['./productos.component.css']
})
export class ProductosAdminComponent implements OnInit {

  fmrDatos = { fmrMenu: {}, fmrFooter: {} };
  lstProductos = [];
  fmrProducto = {
    identificador: 0,
    idProducto: 0,
    sku: '',
    nombre: '',
    descripcion: '',
    imagen: '',
    precio: 0,
    tipo: '',
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
      this.obtenerProductos();
    }).catch(err => {
      console.log(err);
    });
  }

  obtenerProductos() {
    this.api.get("Datos/obtenerProductos", "").subscribe(
      (res: any) => {
        this.lstProductos = res;
        console.log(this.lstProductos);

      },
      err => {
        console.log(err);
      }
    );
  }

  datosModificar(datos) {
    this.fmrProducto = datos;
  }

  guardar() {
    if (this.fmrProducto.idProducto == 0) {
      this.fmrProducto.identificador = 1;
    } else {
      this.fmrProducto.identificador = 2;
    }
    console.log(this.fmrProducto)
    this.api.post("Datos/gestionProducto", this.fmrProducto).subscribe(
      (res: any) => {
        console.log(res);
        $('#AddProducto').modal('toggle');
        this.globales.mostarNotificacion("Registro guardado correctamente", "success");
        this.fmrProducto = {
          identificador: 0,
          idProducto: 0,
          sku: '',
          nombre: '',
          descripcion: '',
          imagen: '',
          precio: 0,
          tipo: '',
          estado: 0,
        }
        this.obtenerProductos();

      },
      err => {
        console.log(err);
      }
    );
  }


  obtenerImagen() {
    var files = $("#ImagenProducto").prop('files');
    var reader = new FileReader();
    if (files.length > 0) {
      reader.readAsDataURL(files[0]);
      reader.onload = () => {
        this.fmrProducto.imagen = reader.result + "";
      };
      reader.onerror = function (error) {
        console.log('Error: ', error);
      };
    }
  }
}
