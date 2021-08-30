import { Component, Input, OnInit } from '@angular/core';
import { SesionService } from 'src/app/servicios/sesion/sesion.service';

@Component({
  selector: 'app-footer',
  templateUrl: './footer.component.html',
  styleUrls: ['./footer.component.css']
})
export class FooterComponent implements OnInit {

  @Input() fmrFooter = {
    logo: '',
    email: '',
    telefono: '',
    horarios: '',
    facebook: '',
    instagram: '',
    direccion: ''
  }
  constructor(private api: SesionService) {

  }

  ngOnInit() {
   
  }

  

}
