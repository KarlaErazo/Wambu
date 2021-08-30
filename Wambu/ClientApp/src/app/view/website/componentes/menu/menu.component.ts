import { Component, Input, OnInit } from '@angular/core';
import { ApiService } from 'src/app/servicios/api/api.service';
import { SesionService } from 'src/app/servicios/sesion/sesion.service';

@Component({
  selector: 'app-menu',
  templateUrl: './menu.component.html',
  styleUrls: ['./menu.component.css']
})
export class MenuComponent implements OnInit {

  @Input() fmrMenu = {
    logo: '',
    email: '',
    telefono: '',
    horarios: '',
    facebook: '',
    instagram: ''
  }

  usuario: any;
  constructor(private sesion: ApiService) {

  }

  ngOnInit() {
   this.usuario = this.sesion.obtenerUsuarioSesion();
   console.log(this.usuario)
  }

  cerrarSesion(){
    this.sesion.cerrarSesion();
  }


}
