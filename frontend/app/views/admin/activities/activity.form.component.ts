import { Component, ViewChild } from '@angular/core';
import { Location } from '@angular/common';
import { Observable } from 'rxjs/Observable';
import { Activity } from 'app/models/activity';
import { ActivityService } from 'app/services/activity';
import { Tag } from 'app/models/tag';
import { TagService } from 'app/services/tag';
import { ActivatedRoute, ParamMap } from '@angular/router';

import 'rxjs/add/observable/merge';
import 'rxjs/add/observable/of';
import 'rxjs/add/operator/catch';
import 'rxjs/add/operator/map';
import 'rxjs/add/operator/startWith';
import 'rxjs/add/operator/switchMap';
import { OnInit } from '@angular/core/src/metadata/lifecycle_hooks';

@Component({
	selector: 'edit-user',
	templateUrl: 'activity.form.html',
})

export class ActivityEditComponent implements OnInit {

	activity$: Observable<Activity>;
	tags: Observable<Tag[]>;

	constructor(
		public service: ActivityService,
		public tagService: TagService,
		private location: Location,
		public route: ActivatedRoute
	) { }

	ngOnInit(): void {
		this.tags = this.tagService.list();

		this.activity$ = this.route.paramMap
			.switchMap((params: ParamMap) =>
				this.service.get(params.get('id')));
	}

	back(): void {
		this.location.back();
	}

}
