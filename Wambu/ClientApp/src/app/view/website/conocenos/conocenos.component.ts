import { Component, OnInit } from '@angular/core';
import { DomSanitizer, SafeUrl } from '@angular/platform-browser';
import { AuxiliaresService } from 'src/app/metodos/auxiliares/auxiliares.service';
import { SesionService } from 'src/app/servicios/sesion/sesion.service';

@Component({
  selector: 'app-conocenos',
  templateUrl: './conocenos.component.html',
  styleUrls: ['./conocenos.component.css']
})
export class ConocenosComponent implements OnInit {

  fmrConocenos = {
    video: '',
    texto: '',
    imagen: ''
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
      this.api.get("Datos/obtenerContenido?pagina=" + 2 + "", "").subscribe(
        (res: any) => {
          var resultado = res;
          console.log(res);
          if (resultado.length > 0) {
            for (let res of resultado) {
              if (res.nombre == 'Video') {
                this.fmrConocenos.video = res.descripcion + '?autoplay=1';
              } if (res.nombre == 'Texto') {
                this.fmrConocenos.texto = res.descripcion
              } if (res.nombre == 'Imagen') {
                this.fmrConocenos.imagen = res.imagen
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
