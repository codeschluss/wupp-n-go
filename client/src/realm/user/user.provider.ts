import { Injectable } from '@angular/core';
import { CrudProvider } from '@portal/core';
import { UserControllerService } from '../../api/services/user-controller.service';
import { ActivityModel } from '../activity/activity.model';
import { OrganisationModel } from '../organisation/organisation.model';
import { ProviderModel } from '../provider/provider.model';
import { UserModel } from './user.model';

@Injectable({ providedIn: 'root' })
export class UserProvider
  extends CrudProvider<UserControllerService, UserModel> {

  protected linked = [
    {
      field: 'activities',
      method: this.service.userControllerReadActivitiesResponse,
      model: ActivityModel
    },
    {
      field: 'organisations',
      method: this.service.userControllerReadOrganisationsResponse,
      model: OrganisationModel
    },
    {
      field: 'provider',
      method: null,
      model: ProviderModel
    }
  ];

  protected methods = {
    create: this.service.userControllerCreateResponse,
    delete: this.service.userControllerDeleteResponse,
    readAll: this.service.userControllerReadAllResponse,
    readOne: this.service.userControllerReadOneResponse,
    update: this.service.userControllerUpdateResponse
  };

  protected model = this.based(UserModel);

  public constructor(
    protected service: UserControllerService
  ) {
    super();
  }

  public create: (model: UserModel) => Promise<any>;

  public update: (id: string, model: UserModel) => Promise<any>;

  public delete: (id: string) => Promise<any>;

  public readOne: (id: string) => Promise<UserModel>;

  public readAll: (params?: UserControllerService
    .UserControllerReadAllParams) => Promise<UserModel[]>;

  public grantSuperUser:
    (userId: string, grant: boolean) => Promise<any> =
      this.apply(this.service.userControllerGrantSuperuserRightResponse);

  public resetPassword:
    (username: string) => Promise<any> =
      this.apply(this.service.userControllerResetPasswordResponse);

  public linkOrganisations:
    (id: string, organisationIds: string[]) => Promise<any> =
      this.apply(this.service.userControllerAddOrganisationResponse);

  public unlinkActivity:
    (id: string, activityId: string) => Promise<any> =
      this.apply(this.service.userControllerDeleteActivityResponse);

  public unlinkOrganisation:
    (id: string, organisationId) => Promise<any> =
      this.apply(this.service.userControllerDeleteOrganisationResponse);

}
