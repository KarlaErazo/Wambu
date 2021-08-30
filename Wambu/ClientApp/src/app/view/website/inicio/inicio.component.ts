import { Component, OnInit } from '@angular/core';
import { AuxiliaresService } from 'src/app/metodos/auxiliares/auxiliares.service';
import { SesionService } from 'src/app/servicios/sesion/sesion.service';

@Component({
  selector: 'app-inicio',
  templateUrl: './inicio.component.html',
  styleUrls: ['./inicio.component.css']
})
export class InicioComponent implements OnInit {

  fmrInicio = {
    carrucel: ''
  };
  fmrDatos = { fmrMenu: {}, fmrFooter: {} };
  lstProductos = [];

  constructor(private api: SesionService, private datos: AuxiliaresService) { }

  ngOnInit() {
    this.obtenerContenido();
  }

  obtenerContenido() {

    this.datos.datosPagina().then(res_ => {
      this.fmrDatos = res_;
      this.api.get("Datos/obtenerContenido?pagina=" + 1 + "", "").subscribe(
        (res: any) => {
          var resultado = res;
          if (resultado.length > 0) {
            for (let res of resultado) {
              if (res.nombre == 'Carrucel') {
                this.fmrInicio.carrucel = res.imagen;
              }
            }
          }
          this.obtenerProductosValorados();
        },
        err => {
          console.log(err);
        }
      );
    }).catch(err => {
      console.log(err);
    });
  }

  obtenerProductosValorados(){
    this.api.get("Datos/obtenerProductosValorados", "").subscribe(
      (res: any) => {
        this.lstProductos = res;
        console.log(this.lstProductos);
      },
      err => {
        console.log(err);
      }
    );
  }
}
