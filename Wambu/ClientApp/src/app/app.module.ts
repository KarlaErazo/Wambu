import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { HttpClientModule } from '@angular/common/http';
import { RouterModule } from '@angular/router';

import { AppComponent } from './app.component';
import { NavMenuComponent } from './nav-menu/nav-menu.component';
import { HomeComponent } from './home/home.component';
import { CounterComponent } from './counter/counter.component';
import { FetchDataComponent } from './fetch-data/fetch-data.component';
import { MenuComponent } from './view/website/componentes/menu/menu.component';
import { FooterComponent } from './view/website/componentes/footer/footer.component';
import { InicioComponent } from './view/website/inicio/inicio.component';
import { ConocenosComponent } from './view/website/conocenos/conocenos.component';
import { ProductosComponent } from './view/website/productos/productos.component';
import { UbicadosComponent } from './view/website/ubicados/ubicados.component';
import { ContactosComponent } from './view/website/contactos/contactos.component';
import { LoginComponent } from './view/login/login.component';
import { SesionService } from './servicios/sesion/sesion.service';
import { AuxiliaresService } from './metodos/auxiliares/auxiliares.service';
import { ProductoDetalleComponent } from './view/website/producto-detalle/producto-detalle.component';
import { GlobalessService } from './metodos/globales/globaless.service';
import { ApiService } from './servicios/api/api.service';
import { ContenidoComponent } from './view/administrador/contenido/contenido.component';
import { ModulosComponent } from './view/administrador/componentes/modulos/modulos.component';
import { UsuariosComponent } from './view/administrador/usuarios/usuarios.component';
import { ProductosAdminComponent } from './view/administrador/productos/productos.component';

@NgModule({
  declarations: [
    AppComponent,
    NavMenuComponent,
    HomeComponent,
    CounterComponent,
    FetchDataComponent,
    MenuComponent,
    FooterComponent,
    InicioComponent,
    ConocenosComponent,
    ProductosComponent,
    UbicadosComponent,
    ContactosComponent,
    LoginComponent,
    ProductoDetalleComponent,
    ContenidoComponent,
    ModulosComponent,
    UsuariosComponent,
    ProductosAdminComponent
  ],
  imports: [
    BrowserModule.withServerTransition({ appId: 'ng-cli-universal' }),
    HttpClientModule,
    FormsModule,
    RouterModule.forRoot([
      { path: '', component: InicioComponent, pathMatch: 'full' },
      { path: 'login', component: LoginComponent },
      { path: 'conocenos', component: ConocenosComponent },
      { path: 'productos', component: ProductosComponent },
      { path: 'ubicacion', component: UbicadosComponent },
      { path: 'contactos', component: ContactosComponent },
      { path: 'producto-detalle/:id', component: ProductoDetalleComponent },
      { path: 'administrador/contenido', component: ContenidoComponent },
      { path: 'administrador/productos', component: ProductosAdminComponent },
      { path: 'administrador/usuarios', component: UsuariosComponent },
      
    ])
  ],
  providers: [SesionService, AuxiliaresService, GlobalessService, ApiService],
  bootstrap: [AppComponent]
})
export class AppModule { }
