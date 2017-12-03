import { Component, Inject } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { FormControl } from '@angular/forms';

import { MatDialog, MatDialogRef, MAT_DIALOG_DATA } from '@angular/material';
import { Constants } from 'app/views/common/constants';
import { ValidationService } from 'app/services/validation.service';

import { Address } from 'app/models/address';


@Component({
	templateUrl: 'address.form.html',
})

export class AddressFormComponent {

	address: Address;

	constructor(
		public constants: Constants,
		public dialogRef: MatDialogRef<AddressFormComponent>,
		public validation: ValidationService,
		@Inject(MAT_DIALOG_DATA) public data: any,
	) {
		this.address = data.address;
	}

	onNoClick(): void { }

	onSubmit(): void {
		console.log('this.address:' + this.address);
		this.dialogRef.close(this.address);
	}
}

