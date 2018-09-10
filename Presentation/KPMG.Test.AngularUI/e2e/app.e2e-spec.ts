import { AngularJsUIPage } from './app.po';

describe('angular-js-ui App', () => {
  let page: AngularJsUIPage;

  beforeEach(() => {
    page = new AngularJsUIPage();
  });

  it('should display welcome message', () => {
    page.navigateTo();
    expect(page.getParagraphText()).toEqual('Welcome to app!!');
  });
});
