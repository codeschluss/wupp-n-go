import { Model } from 'app/models/model';
import { Provider } from 'app/models/provider';

export class User extends Model {

	public superuser: boolean = false;
	public username: string = '';
	public password: string = '';
	public fullname: string = '';
	public phone: string = '';
	public providers: Provider[] = new Array<Provider>();

	// calculated field
	public orgaAdmin: boolean = false;

	constructor(json: any = {} as User) {
		super(json.id);
		this.superuser = json.superuser && json.superuser || false;
		this.username = json.username && json.username || '';
		this.password = json.password && json.password || '';
		this.fullname = json.fullname && json.fullname || '';
		this.phone = json.phone && json.phone || '';
		this.providers = json.providers && json.providers || new Array<Provider>();

		this.setOrgaAdmin();
	}

	private setOrgaAdmin(): void {
		this.providers.forEach(provider => {
			if (provider.admin) {
				this.orgaAdmin = true;
			}
		});
	}
}


