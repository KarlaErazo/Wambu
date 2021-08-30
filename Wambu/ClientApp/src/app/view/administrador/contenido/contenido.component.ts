import { Component, OnInit } from '@angular/core';
import { AuxiliaresService } from 'src/app/metodos/auxiliares/auxiliares.service';
import { GlobalessService } from 'src/app/metodos/globales/globaless.service';
import { ApiService } from 'src/app/servicios/api/api.service';
import { SesionService } from 'src/app/servicios/sesion/sesion.service';
declare var $: any;
@Component({
  selector: 'app-contenido',
  templateUrl: './contenido.component.html',
  styleUrls: ['./contenido.component.css']
})
export class ContenidoComponent implements OnInit {
  fmrDatos = { fmrMenu: {}, fmrFooter: {} };
  lstContenido = [];
  frmContenido= {descripcion: '', idContenido: 0, idPagina: 0, identificador: 0, imagen: '', nombre: ''};
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

  obtenerModulos(modulo){
    this.api.get("Datos/obtenerContenido?pagina=" + modulo + "", "").subscribe(
      (res: any) => {
        this.lstContenido = res;
        console.log(res);
        
      },
      err => {
        console.log(err);
      }
    );
  }

  datosModificar(datos){
    this.frmContenido = datos;
  }

  guardar(){
    if(this.frmContenido.imagen == ''){
      this.frmContenido.identificador = 2;
    }else{
      this.frmContenido.identificador = 1;
    }

    this.api.post("Datos/gestionContenido", this.frmContenido).subscribe(
      (res: any) => {
        $('#flipFlop').modal('toggle');
        this.globales.mostarNotificacion("Registro actualizado correctamente", "success");
        console.log(res);
        
      },
      err => {
        console.log(err);
      }
    );
  }

  obtenerImagen(){
    var files = $("#ImagenContenido").prop('files');
    var reader = new FileReader();
    if (files.length > 0) {
      reader.readAsDataURL(files[0]);
      reader.onload = () => {
        this.frmContenido.imagen = reader.result + "";
      };
      reader.onerror = function (error) {
        console.log('Error: ', error);
      };
    }
  }
}
