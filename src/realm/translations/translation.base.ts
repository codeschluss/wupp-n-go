import { ActivatedRoute } from '@angular/router';
import { CrudModel, TokenProvider } from '@wooportal/core';
import { BaseForm } from '@wooportal/forms';
import { forkJoin, Observable } from 'rxjs';
import { TranslationProvider } from '../providers/translation.provider';

export abstract class TranslationBase<Model extends CrudModel>
  extends BaseForm<Model> {

  public constructor(
    private translationProvider: TranslationProvider,
    route: ActivatedRoute,
    tokenProvider: TokenProvider
  ) {
    super(route, tokenProvider);
  }

  protected cascade(item: Model): Observable<any> {
    return forkJoin(this.group.get('translations').value.map((translation) => {
      const { id, ...rest } = translation;
      translation = Object.assign(Object.create(item), item, rest);
      return this.translationProvider.update(translation);
    }));
  }

}