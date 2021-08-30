import { Injectable } from '@angular/core';
import { Router } from '@angular/router';

@Injectable({
  providedIn: 'root'
})
export class ApiService {

  private keyCliente: string = "l:key";
  constructor(private router: Router) { }

  
  cerrarSesion() {
    localStorage.removeItem(this.keyCliente);
    this.router.navigate(['/']);
  }

  iniciarSesion(usuario: any) {
    var datosCifrados = JSON.stringify(usuario);
    localStorage.setItem(this.keyCliente, datosCifrados);
    if(usuario.rol == "USUARIO"){
      this.router.navigate(['/']);
    }else if(usuario.rol == "ADMINISTRADOR"){
      this.router.navigate(['/administrador/contenido']);
    }
    
  }

  verificarInicioSesion() {
    var datos: any = localStorage.getItem(this.keyCliente);
    if (datos === null) {
      this.router.navigate(['/']);
    }
  }

  obtenerUsuarioSesion() {
    var datosPlanos: any;
    var datos = localStorage.getItem(this.keyCliente);
    if (datos === null) {
    } else {
      datosPlanos = JSON.parse(datos);
    }
    return datosPlanos;
  }
}
