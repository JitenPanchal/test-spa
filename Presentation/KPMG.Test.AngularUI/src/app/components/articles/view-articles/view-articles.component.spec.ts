import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ViewArticlesComponent } from './view-articles.component';

describe('ViewArticlesComponent', () => {
  let component: ViewArticlesComponent;
  let fixture: ComponentFixture<ViewArticlesComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ViewArticlesComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ViewArticlesComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should be created', () => {
    expect(component).toBeTruthy();
  });
});
