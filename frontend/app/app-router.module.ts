import { Component } from '@angular/core';
import { NgModule } from '@angular/core';
import { RouterModule } from '@angular/router';

import { MappingComponent } from 'app/views/mapping';
import { LoginComponent } from 'app/views/admin/login/login.component';
import { AdminComponent } from 'app/views/admin/admin.component';
import { UserEditComponent } from 'app/views/admin/users/user.form.component';
import { OrganisationEditComponent } from 'app/views/admin/organisations/organisation.form.component';
import { ActivityEditComponent } from 'app/views/admin/activities/activity.form.component';
import { AuthGuard } from 'app/views/admin/login/auth.guard';

@NgModule({
	imports: [RouterModule.forRoot([
		{ path: '', component: MappingComponent },
		{ path: 'login', component: LoginComponent },
		{ path: 'admin', component: AdminComponent, canActivate: [AuthGuard] },
		{ path: 'user/edit/:id', component: UserEditComponent },
		{ path: 'organisation/edit/:id', component: OrganisationEditComponent },
		{ path: 'activity/edit/:id', component: ActivityEditComponent },

		// { path: '**', redirectTo: '' }
	])],
	exports: [RouterModule]
})

export class AppRouterModule { }
