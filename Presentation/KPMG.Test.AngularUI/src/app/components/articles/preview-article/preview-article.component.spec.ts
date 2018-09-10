import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { PreviewArticleComponent } from './preview-article.component';

describe('PreviewArticleComponent', () => {
  let component: PreviewArticleComponent;
  let fixture: ComponentFixture<PreviewArticleComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ PreviewArticleComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(PreviewArticleComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should be created', () => {
    expect(component).toBeTruthy();
  });
});
