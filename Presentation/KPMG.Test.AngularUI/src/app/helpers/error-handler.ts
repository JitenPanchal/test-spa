import { Injectable } from "@angular/core";
import { Observable } from "rxjs/Rx";

@Injectable()
export class HttpRequestHandler {
  public extractData(res: Response) {
    const body = res.json();
    return body || {};
  }

  public handleError(error: Response | any) {
    let errorMessages: string;
    errorMessages = "";

    if (error.error) {
      if (error.error.validationErrorMessages) {
        const validationErrorMessages = error.error.validationErrorMessages;
        if (validationErrorMessages) {
          for (const property in validationErrorMessages) {
            if (property) {
              errorMessages = `${validationErrorMessages[property]}\n`;
            }
          }
        }
      }

      if (error.error.errorMessages) {
        for (const errorMessage of error.error.errorMessages) {
          errorMessages = `${errorMessage}\n`;
        }
      }
    } else {
      errorMessages = error.message ? error.message : error.toString();
    }

    if (errorMessages) {
      alert(errorMessages);
    }

    return Observable.empty();
  }
}
