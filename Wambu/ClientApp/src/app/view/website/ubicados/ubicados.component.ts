import { Component, OnInit } from '@angular/core';
import { DomSanitizer } from '@angular/platform-browser';
import { AuxiliaresService } from 'src/app/metodos/auxiliares/auxiliares.service';
import { SesionService } from 'src/app/servicios/sesion/sesion.service';

@Component({
  selector: 'app-ubicados',
  templateUrl: './ubicados.component.html',
  styleUrls: ['./ubicados.component.css']
})
export class UbicadosComponent implements OnInit {

  fmrUbicacion = {
    coordenadas: ''
  };
  fmrDatos = { fmrMenu: {}, fmrFooter: {} };

  constructor(private api: SesionService, private dom: DomSanitizer, private datos: AuxiliaresService) {
    this.obtenerContenido();
  }

  ngOnInit() {

  }

  obtenerContenido() {

    this.datos.datosPagina().then(res_ => {
      this.fmrDatos = res_;
      this.api.get("Datos/obtenerContenido?pagina=" + 4 + "", "").subscribe(
        (res: any) => {
          var resultado = res;
          console.log(res);
          if (resultado.length > 0) {
            for (let res of resultado) {
              if (res.nombre == 'Coordenadas') {
                this.fmrUbicacion.coordenadas = res.descripcion;
              }
            }
          }
        },
        err => {
          console.log(err);
        }
      );
    }).catch(err => {
      console.log(err);
    });


  }

  verContenido(url) {
    return this.dom.bypassSecurityTrustResourceUrl(url);
  }

}
