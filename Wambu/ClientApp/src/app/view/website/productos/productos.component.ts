import { Component, OnInit } from '@angular/core';
import { DomSanitizer } from '@angular/platform-browser';
import { AuxiliaresService } from 'src/app/metodos/auxiliares/auxiliares.service';
import { SesionService } from 'src/app/servicios/sesion/sesion.service';

@Component({
  selector: 'app-productos',
  templateUrl: './productos.component.html',
  styleUrls: ['./productos.component.css']
})
export class ProductosComponent implements OnInit {
  fmrDatos = { fmrMenu: {}, fmrFooter: {} };
  lstProductos = [];
  constructor(private api: SesionService, private dom: DomSanitizer, private datos: AuxiliaresService) {

  }

  ngOnInit() {
    this.obtenerProductos();
  }

  obtenerProductos() {

    this.datos.datosPagina().then(res_ => {
      this.fmrDatos = res_;
      
      this.api.get("Datos/obtenerProductos", "").subscribe(
        (res: any) => {
          this.lstProductos = res;
          console.log(this.lstProductos);
          
        },
        err => {
          console.log(err);
        }
      );
      
    }).catch(err => {
      console.log(err);
    });


  }

}
