import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ProductosAdminComponent } from './productos.component';

describe('ProductosAdminComponent', () => {
  let component: ProductosAdminComponent;
  let fixture: ComponentFixture<ProductosAdminComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ProductosAdminComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ProductosAdminComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
