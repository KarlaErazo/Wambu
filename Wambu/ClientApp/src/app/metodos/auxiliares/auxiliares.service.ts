import { Injectable } from '@angular/core';
import { SesionService } from 'src/app/servicios/sesion/sesion.service';

@Injectable({
  providedIn: 'root'
})
export class AuxiliaresService {

  constructor(private api: SesionService) {

  }

  public datosPagina() {

    var fmrMenu = {
      logo: '',
      email: '',
      telefono: '',
      horarios: '',
      facebook: '',
      instagram: ''
    };
    var fmrFooter = {
      logo: '',
      email: '',
      telefono: '',
      horarios: '',
      facebook: '',
      instagram: '',
      direccion: ''
    }
    return new Promise<any>((resolve, reject) => {

      this.api.get("Datos/obtenerContenido?pagina=" + 6 + "").subscribe(
        (res: any) => {
          var resultado = res;
          if (resultado.length > 0) {
            for (let res of resultado) {
              if (res.nombre == 'Logo') {
                fmrMenu.logo = res.imagen;
              } if (res.nombre == 'Email') {
                fmrMenu.email = res.descripcion;
              } if (res.nombre == 'Telefono') {
                fmrMenu.telefono = res.descripcion;
              } if (res.nombre == 'Horarios') {
                fmrMenu.horarios = res.descripcion;
              } if (res.nombre == 'Facebook') {
                fmrMenu.facebook = res.descripcion;
              } if (res.nombre == 'Instagram') {
                fmrMenu.instagram = res.descripcion;
              }
            }
          }

          this.api.get("Datos/obtenerContenido?pagina=" + 7 + "").subscribe(
            (res: any) => {
              var resultado2 = res;
              if (resultado2.length > 0) {
                for (let res of resultado2) {
                  if (res.nombre == 'Logo') {
                    fmrFooter.logo = res.imagen;
                  } if (res.nombre == 'Email') {
                    fmrFooter.email = res.descripcion;
                  } if (res.nombre == 'Telefono') {
                    fmrFooter.telefono = res.descripcion;
                  } if (res.nombre == 'Horarios') {
                    fmrFooter.horarios = res.descripcion;
                  } if (res.nombre == 'Facebook') {
                    fmrFooter.facebook = res.descripcion;
                  } if (res.nombre == 'Instagram') {
                    fmrFooter.instagram = res.descripcion;
                  } if (res.nombre == 'Direccion') {
                    fmrFooter.direccion = res.descripcion;
                  }
                }
              }



              resolve({ fmrMenu: fmrMenu, fmrFooter: fmrFooter });
            },
            err => {
              reject(err);
            }
          );

        },
        err => {
          reject(err);
        }
      );


    });
  }
}
