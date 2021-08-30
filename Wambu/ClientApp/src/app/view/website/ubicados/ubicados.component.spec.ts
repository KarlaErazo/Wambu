import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { UbicadosComponent } from './ubicados.component';

describe('UbicadosComponent', () => {
  let component: UbicadosComponent;
  let fixture: ComponentFixture<UbicadosComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ UbicadosComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(UbicadosComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
