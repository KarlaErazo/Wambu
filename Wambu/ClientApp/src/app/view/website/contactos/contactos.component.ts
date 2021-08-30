import { Component, OnInit } from '@angular/core';
import { AuxiliaresService } from 'src/app/metodos/auxiliares/auxiliares.service';
import { SesionService } from 'src/app/servicios/sesion/sesion.service';

@Component({
  selector: 'app-contactos',
  templateUrl: './contactos.component.html',
  styleUrls: ['./contactos.component.css']
})
export class ContactosComponent implements OnInit {

  fmrContacto = {
    Nombre: '',
    Email: '',
    Telefono: '',
    Mensaje: ''
  }
  fmrDatos = { fmrMenu: {}, fmrFooter: {} };
  constructor(private api: SesionService, private datos: AuxiliaresService) {

  }

  ngOnInit() {
    this.datos.datosPagina().then(res_ => {
      this.fmrDatos = res_;
    }).catch(err => {
      console.log(err);
    });

  }

  contactar() {
    this.api.post("Datos/enviaEmailContacto", this.fmrContacto).subscribe(
      (res: any) => {
        var resultado = res;
        console.log(res);
        if (resultado == "1") {
          alert("Mensaje enviado exitosamente")
        }
      },
      err => {
        console.log(err);
      }
    );
  }

}
