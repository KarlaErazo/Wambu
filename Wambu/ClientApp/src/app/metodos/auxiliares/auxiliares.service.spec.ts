import { TestBed } from '@angular/core/testing';

import { AuxiliaresService } from './auxiliares.service';

describe('AuxiliaresService', () => {
  beforeEach(() => TestBed.configureTestingModule({}));

  it('should be created', () => {
    const service: AuxiliaresService = TestBed.get(AuxiliaresService);
    expect(service).toBeTruthy();
  });
});
