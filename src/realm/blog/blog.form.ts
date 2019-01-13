import { Component, Type } from '@angular/core';
import { Validators } from '@angular/forms';
import { Box } from '@portal/core';
import { BaseForm, FormField, SelectFieldComponent, StringFieldComponent } from '@portal/forms';
import { forkJoin, Observable, of } from 'rxjs';
import { map } from 'rxjs/operators';
import { ActivityModel } from '../activity/activity.model';
import { BlogModel } from './blog.model';

@Component({
  selector: 'blog-form',
  template: BaseForm.template(`
    <ng-template #label let-case="case">
      <ng-container [ngSwitch]="case.name">
        <ng-container *ngSwitchCase="'activity'">
          <i18n i18n="@@activity">activity</i18n>
        </ng-container>
        <ng-container *ngSwitchCase="'author'">
          <i18n i18n="@@author">author</i18n>
        </ng-container>
        <ng-container *ngSwitchCase="'content'">
          <i18n i18n="@@content">content</i18n>
        </ng-container>
        <ng-container *ngSwitchCase="'title'">
          <i18n i18n="@@title">title</i18n>
        </ng-container>
      </ng-container>
    </ng-template>
  `)
})

export class BlogFormComponent extends BaseForm<BlogModel> {

  public fields: FormField[] = [
    {
      name: 'title',
      input: StringFieldComponent,
      tests: [Validators.required]
    },
    {
      name: 'author',
      input: StringFieldComponent,
      tests: [Validators.required]
    },
    {
      name: 'activity',
      input: SelectFieldComponent,
      label: 'name',
      model: ActivityModel
    },
    {
      name: 'content',
      input: StringFieldComponent,
      multi: true,
      tests: [Validators.required]
    }
  ];

  public model: Type<BlogModel> = BlogModel;

  public persist(): Observable<any> {
    this.item.activityId = this.group.get('activity').value.id;

    return super.persist();
  }

  protected cascade(item: BlogModel): Observable<any> {
    const links = [];
    const provider = this.model['provider'];

    if (this.item.id) {
      const actyID = this.item.activity && this.item.activity.id;
      if (actyID !== this.item.activityId) { links.push(provider
        .relinkActivity(item.id, Box(this.item.activityId))); }
    }

    return forkJoin([of(item), ...links]).pipe(map((items) => items.shift()));
  }

}
