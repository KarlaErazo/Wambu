import { Injectable } from '@angular/core';
import Swal from 'sweetalert2';

@Injectable({
  providedIn: 'root'
})
export class GlobalessService {

  constructor() { }

  public mostarAlerta(titulo, texto, tipo) {
    Swal.fire({
      icon: tipo,
      title: titulo,
      text: texto
    })
  }

  public mostarNotificacion(texto, tipo){
    const Toast = Swal.mixin({
      toast: true,
      position: 'top-end',
      showConfirmButton: false,
      timer: 3000,
      timerProgressBar: true,
      didOpen: (toast) => {
        toast.addEventListener('mouseenter', Swal.stopTimer)
        toast.addEventListener('mouseleave', Swal.resumeTimer)
      }
    })
    
    Toast.fire({
      icon: tipo,
      title: texto
    })
  }

  validarEmail(email){
    var emailRex = /^(([^<>()[\]\.,;:\s@\"]+(\.[^<>()[\]\.,;:\s@\"]+)*)|(\".+\"))@(([^<>()[\]\.,;:\s@\"]+\.)+[^<>()[\]\.,;:\s@\"]{2,})$/i;
    if(emailRex.test(email)){
      return false;
    }else{
      return true;
    }
  }
}
