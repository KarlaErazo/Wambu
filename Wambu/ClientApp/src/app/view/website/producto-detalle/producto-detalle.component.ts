import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { AuxiliaresService } from 'src/app/metodos/auxiliares/auxiliares.service';
import { SesionService } from 'src/app/servicios/sesion/sesion.service';

@Component({
  selector: 'app-producto-detalle',
  templateUrl: './producto-detalle.component.html',
  styleUrls: ['./producto-detalle.component.css']
})
export class ProductoDetalleComponent implements OnInit {
  fmrDatos = { fmrMenu: {}, fmrFooter: {} };
  idProducto = 0;
  dtsProducto = {}
  constructor(private api: SesionService, private datos: AuxiliaresService, private rutaActiva: ActivatedRoute) {
    this.idProducto = this.rutaActiva.snapshot.params.id;
  }

  ngOnInit() {
    this.obtenerProductos();
  }

  obtenerProductos() {

    this.datos.datosPagina().then(res_ => {
      this.fmrDatos = res_;

      this.api.get("Datos/obtenerProducto?idproducto=" + this.idProducto, "").subscribe(
        (res: any) => {
          this.dtsProducto = res;
          console.log(this.dtsProducto);

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
