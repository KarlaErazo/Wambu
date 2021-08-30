import { TestBed } from '@angular/core/testing';

import { GlobalessService } from './globaless.service';

describe('GlobalessService', () => {
  beforeEach(() => TestBed.configureTestingModule({}));

  it('should be created', () => {
    const service: GlobalessService = TestBed.get(GlobalessService);
    expect(service).toBeTruthy();
  });
});
