SET character_set_client = utf8;

INSERT INTO `configurations` (`id`, `item`, `value`) VALUES
('00000000-0000-0000-0001-000000000001', 'mapcenterLongitude', '7.1756'),
('00000000-0000-0000-0001-000000000002', 'mapcenterLatitude', '51.2640'),
('00000000-0000-0000-0001-000000000003', 'zoomfactor', '13.5'),
('00000000-0000-0000-0001-000000000004', 'mapProjection', 'EPSG:4326'),
('00000000-0000-0000-0001-000000000005', 'portalName', 'Wupportal'),
('00000000-0000-0000-0001-000000000006', 'portalSubtitle', 'Integrationsportal'),
('00000000-0000-0000-0001-000000000007', 'portalMail', 'milli@codeschluss.de');

INSERT INTO `tags` (`id`, `name`, `description`) VALUES
('00000000-0000-0000-0002-100000000000', 'tag1', 'tag1'),
('00000000-0000-0000-0002-200000000000', 'tag2', 'tag2'),
('00000000-0000-0000-0002-300000000000', 'tagTranslateRead', 'tagTranslateRead'),
('00000000-0000-0000-0002-400000000000', 'tagTranslateEdit', 'tagTranslateEdit'),
('00000000-0000-0000-0002-500000000000', 'mapfilter', 'mapfilter'),
('00000000-0000-0000-0002-600000000000', 'mapfilterAllWithoutFree', 'mapfilterAllWithoutFree');

INSERT INTO `target_groups` (`id`, `name`, `description`) VALUES
('00000000-0000-0000-0003-100000000000', 'target1', 'target1'),
('00000000-0000-0000-0003-200000000000', 'target2', 'target2'),
('00000000-0000-0000-0003-300000000000', 'targetTranslateRead', 'targetTranslateRead'),
('00000000-0000-0000-0003-400000000000', 'targetTranslateEdit', 'targetTranslateEdit'),
('00000000-0000-0000-0003-500000000000', 'mapfilter', 'mapfilter'),
('00000000-0000-0000-0003-600000000000', 'mapfilterAllWithoutFree', 'mapfilterAllWithoutFree');

INSERT INTO `users` (`id`, `superuser`, `username`, `password`, `fullname`, `phone`) VALUES
('00000000-0000-0000-0004-100000000000', 1, 'super@user', '$2y$10$VVFNql01lVC3k/B0a2L5XOh0DYIVkF1SPBL6rQxvM8h9GWLcsI0J2', 'superuser', '01234567890'),
('00000000-0000-0000-0004-200000000000', 0, 'admin@user', '$2y$10$VVFNql01lVC3k/B0a2L5XOh0DYIVkF1SPBL6rQxvM8h9GWLcsI0J2', 'adminuser', '09876543210'),
('00000000-0000-0000-0004-300000000000', 0, 'provider1@user', '$2y$10$VVFNql01lVC3k/B0a2L5XOh0DYIVkF1SPBL6rQxvM8h9GWLcsI0J2', 'provider1user', '09876543210'),
('00000000-0000-0000-0004-400000000000', 0, 'provider2@user', '$2y$10$VVFNql01lVC3k/B0a2L5XOh0DYIVkF1SPBL6rQxvM8h9GWLcsI0J2', 'provider2user', '09876543210'),
('00000000-0000-0000-0004-500000000000', 0, 'new@user', '$2y$10$VVFNql01lVC3k/B0a2L5XOh0DYIVkF1SPBL6rQxvM8h9GWLcsI0J2', 'newuser', '09876543210'),
('00000000-0000-0000-0004-600000000000', 0, 'todelete@user', '$2y$10$VVFNql01lVC3k/B0a2L5XOh0DYIVkF1SPBL6rQxvM8h9GWLcsI0J2', 'deleteuser', '09876543210'),
('00000000-0000-0000-0004-700000000000', 0, 'owndelete@user', '$2y$10$VVFNql01lVC3k/B0a2L5XOh0DYIVkF1SPBL6rQxvM8h9GWLcsI0J2', 'deleteuser', '09876543210'),
('00000000-0000-0000-0004-800000000000', 0, 'provider3@user', '$2y$10$VVFNql01lVC3k/B0a2L5XOh0DYIVkF1SPBL6rQxvM8h9GWLcsI0J2', 'provider3user', '09876543210'),
('00000000-0000-0000-0004-900000000000', 1, 'milli@codeschluss.de', '$2y$10$VVFNql01lVC3k/B0a2L5XOh0DYIVkF1SPBL6rQxvM8h9GWLcsI0J2', 'provider3user', '09876543210');

INSERT INTO `suburbs` (`id`, `name`) VALUES
('00000000-0000-0000-0005-100000000000', 'suburb1'),
('00000000-0000-0000-0005-200000000000', 'suburb2'),
('00000000-0000-0000-0005-300000000000', 'todelete'),
('00000000-0000-0000-0005-400000000000', 'mapfilter'),
('00000000-0000-0000-0005-500000000000', 'mapfilterAllWithoutFree');

INSERT INTO `addresses` (`id`, `longitude`, `latitude`, `street`, `house_number`, `postal_code`, `place`, `suburb_id`) VALUES
('00000000-0000-0000-0006-100000000000', 7.1, 51.2, 'address1', '1', '42103', 'wuppertal', '00000000-0000-0000-0005-100000000000'),
('00000000-0000-0000-0006-200000000000', 7.2, 51.2, 'address2', '2', '42103', 'wuppertal', '00000000-0000-0000-0005-200000000000'),
('00000000-0000-0000-0006-300000000000', 7.1, 51.2, 'todelete', '1', '42103', 'wuppertal', '00000000-0000-0000-0005-200000000000'),
('00000000-0000-0000-0006-400000000000', 7.1, 51.2, 'mapfilter', '1', '42103', 'mapfilter', '00000000-0000-0000-0005-400000000000'),
('00000000-0000-0000-0006-500000000000', 7.1, 51.2, 'mapfilter', '1', '42103', 'mapfilter', '00000000-0000-0000-0005-500000000000');

INSERT INTO `categories` (`id`, `name`, `description`, `color`) VALUES
('00000000-0000-0000-0007-100000000000', 'category1', 'category1', 'green'),
('00000000-0000-0000-0007-200000000000', 'category2', 'category2', 'yellow'),
('00000000-0000-0000-0007-300000000000', 'category3', 'category3', 'black'),
('00000000-0000-0000-0007-400000000000', 'todelete', 'todelete', 'lila'),
('00000000-0000-0000-0007-500000000000', 'categoryTranslateRead', 'categoryTranslateRead', 'read'),
('00000000-0000-0000-0007-600000000000', 'categoryTranslateEdit', 'categoryTranslateEdit', 'edit'),
('00000000-0000-0000-0007-700000000000', 'mapfilter', 'mapfilter', 'map'),
('00000000-0000-0000-0007-800000000000', 'mapfilterAllWithoutFree', 'mapfilterAllWithoutFree', 'all');

INSERT INTO `organisations` (`id`, `name`, `description`, `website`, `mail`, `phone`, `image`, `address_id`) VALUES
('00000000-0000-0000-0008-100000000000', 'organisation1', 'organisation1', 'www.orga1.de', 'organisation@1.de', '01234567890', null, '00000000-0000-0000-0006-100000000000'),
('00000000-0000-0000-0008-200000000000', 'organisation2', 'organisation2', 'www.organisation2.com', 'organisation@2.com', '09876543210', null, '00000000-0000-0000-0006-100000000000'),
('00000000-0000-0000-0008-300000000000', 'organisation3', 'organisation3', 'www.organisation3.com', 'organisation@3.com', '09876543210', null, '00000000-0000-0000-0006-200000000000'),
('00000000-0000-0000-0008-400000000000', 'organisationToDeleteSuperUser', 'organisationToDelete', 'www.organisationDelete.com', 'organisation@Delete.com', '09876543210', null, '00000000-0000-0000-0006-100000000000'),
('00000000-0000-0000-0008-500000000000', 'organisationToDeleteOrgaAdmin', 'organisationToDelete', 'www.organisationDelete.com', 'organisation@Delete.com', '09876543210', null, '00000000-0000-0000-0006-100000000000'),
('00000000-0000-0000-0008-600000000000', 'orgaTranslate', 'übersetze Organisation', 'www.organisationTranslate.com', 'organisation@translate.com', '09876543210', null, '00000000-0000-0000-0006-100000000000'),
('00000000-0000-0000-0008-700000000000', 'orgaWithoutProvider', 'kein Provider', 'www.keinProvider.com', 'organisation@noprovider.com', '09876543210', null, '00000000-0000-0000-0006-100000000000'),
('00000000-0000-0000-0008-800000000000', 'orgaMail', 'orgaMail', 'www.orgaMail.com', 'orgaMail@orgaMail.com', '09876543210', null, '00000000-0000-0000-0006-100000000000'),
('00000000-0000-0000-0008-900000000000', 'orgaMap', 'orgaMap', 'www.orgaMap.com', 'orgaMap@orgaMap.com', '09876543210', null, '00000000-0000-0000-0006-100000000000'),
('00000000-0000-0000-0008-110000000000', 'mapfilterAllWithoutFree', 'mapfilterAllWithoutFree', 'www.mapfilterAllWithoutFree.com', 'orgaMap@mapfilterAllWithoutFree.com', '09876543210', null, '00000000-0000-0000-0006-100000000000');

INSERT INTO `providers` (`id`, `organisation_id`, `user_id`, `admin`, `approved`) VALUES
('00000000-0000-0000-0009-100000000000', '00000000-0000-0000-0008-100000000000', '00000000-0000-0000-0004-200000000000', 1, 1),
('00000000-0000-0000-0009-200000000000', '00000000-0000-0000-0008-100000000000', '00000000-0000-0000-0004-300000000000', 0, 1),
('00000000-0000-0000-0009-300000000000', '00000000-0000-0000-0008-200000000000', '00000000-0000-0000-0004-400000000000', 0, 1),
('00000000-0000-0000-0009-400000000000', '00000000-0000-0000-0008-300000000000', '00000000-0000-0000-0004-500000000000', 0, 0),
('00000000-0000-0000-0009-500000000000', '00000000-0000-0000-0008-100000000000', '00000000-0000-0000-0004-800000000000', 0, 1),
('00000000-0000-0000-0009-600000000000', '00000000-0000-0000-0008-200000000000', '00000000-0000-0000-0004-400000000000', 0, 1),
('00000000-0000-0000-0009-700000000000', '00000000-0000-0000-0008-100000000000', '00000000-0000-0000-0004-800000000000', 0, 1),
('00000000-0000-0000-0009-800000000000', '00000000-0000-0000-0008-300000000000', '00000000-0000-0000-0004-800000000000', 0, 1),
('00000000-0000-0000-0009-900000000000', '00000000-0000-0000-0008-500000000000', '00000000-0000-0000-0004-200000000000', 1, 1),
('00000000-0000-0000-0009-110000000000', '00000000-0000-0000-0008-600000000000', '00000000-0000-0000-0004-200000000000', 1, 1),
('00000000-0000-0000-0009-120000000000', '00000000-0000-0000-0008-800000000000', '00000000-0000-0000-0004-900000000000', 1, 1),
('00000000-0000-0000-0009-130000000000', '00000000-0000-0000-0008-900000000000', '00000000-0000-0000-0004-900000000000', 1, 1),
('00000000-0000-0000-0009-140000000000', '00000000-0000-0000-0008-110000000000', '00000000-0000-0000-0004-900000000000', 1, 1);

INSERT INTO `activities` (`id`, `name`, `description`, `show_user`, `address_id`, `provider_id`, `category_id`) VALUES
('00000000-0000-0000-0010-100000000000', 'activity1', 'activity1', 1, '00000000-0000-0000-0006-100000000000', '00000000-0000-0000-0009-100000000000', '00000000-0000-0000-0007-100000000000'),
('00000000-0000-0000-0010-200000000000', 'activity2', 'activity2', 0, '00000000-0000-0000-0006-100000000000', '00000000-0000-0000-0009-200000000000', '00000000-0000-0000-0007-100000000000'),
('00000000-0000-0000-0010-300000000000', 'activity3', 'activity3', 1, '00000000-0000-0000-0006-200000000000', '00000000-0000-0000-0009-300000000000', '00000000-0000-0000-0007-200000000000'),
('00000000-0000-0000-0010-400000000000', 'activityToDelete1', 'activityToDelete1', 1, '00000000-0000-0000-0006-200000000000', '00000000-0000-0000-0009-200000000000', '00000000-0000-0000-0007-200000000000'),
('00000000-0000-0000-0010-500000000000', 'activityToDelete2', 'activityToDelete2', 1, '00000000-0000-0000-0006-200000000000', '00000000-0000-0000-0009-200000000000', '00000000-0000-0000-0007-200000000000'),
('00000000-0000-0000-0010-600000000000', 'activityToDelete3', 'activityToDelete3', 1, '00000000-0000-0000-0006-200000000000', '00000000-0000-0000-0009-200000000000', '00000000-0000-0000-0007-200000000000'),
('00000000-0000-0000-0010-700000000000', 'activityShowUserFalse', 'activityShowUserFalse', 0, '00000000-0000-0000-0006-200000000000', '00000000-0000-0000-0009-200000000000', '00000000-0000-0000-0007-200000000000'),
('00000000-0000-0000-0010-800000000000', 'Aktivität', 'Aktivität übersetzen', 0, '00000000-0000-0000-0006-200000000000', '00000000-0000-0000-0009-200000000000', '00000000-0000-0000-0007-200000000000'),
('00000000-0000-0000-0010-900000000000', 'Aktivität2', 'Aktivität2', 0, '00000000-0000-0000-0006-200000000000', '00000000-0000-0000-0009-110000000000', '00000000-0000-0000-0007-200000000000'),
('00000000-0000-0000-0010-110000000000', 'mapOrgaFilter', 'activityMap', 0, '00000000-0000-0000-0006-200000000000', '00000000-0000-0000-0009-130000000000', '00000000-0000-0000-0007-200000000000'),
('00000000-0000-0000-0010-120000000000', 'mapCategoryFilter', 'activityMap', 0, '00000000-0000-0000-0006-200000000000', '00000000-0000-0000-0009-130000000000', '00000000-0000-0000-0007-700000000000'),
('00000000-0000-0000-0010-130000000000', 'mapSuburbFilter', 'activityMap', 0, '00000000-0000-0000-0006-400000000000', '00000000-0000-0000-0009-130000000000', '00000000-0000-0000-0007-200000000000'),
('00000000-0000-0000-0010-140000000000', 'mapTargtGroupFilter', 'activityMap', 0, '00000000-0000-0000-0006-300000000000', '00000000-0000-0000-0009-130000000000', '00000000-0000-0000-0007-200000000000'),
('00000000-0000-0000-0010-150000000000', 'mapTagFilter', 'activityMap', 0, '00000000-0000-0000-0006-300000000000', '00000000-0000-0000-0009-130000000000', '00000000-0000-0000-0007-200000000000'),
('00000000-0000-0000-0010-160000000000', 'mapAllWithoutFree', 'activityMap', 0, '00000000-0000-0000-0006-500000000000', '00000000-0000-0000-0009-140000000000', '00000000-0000-0000-0007-800000000000'),
('00000000-0000-0000-0010-170000000000', 'mapfilterOnlyFree', 'activityMap', 0, '00000000-0000-0000-0006-500000000000', '00000000-0000-0000-0009-140000000000', '00000000-0000-0000-0007-800000000000'),
('00000000-0000-0000-0010-180000000000', 'NoFutureSchedule', 'activityMap', 0, '00000000-0000-0000-0006-500000000000', '00000000-0000-0000-0009-140000000000', '00000000-0000-0000-0007-800000000000');

INSERT INTO `activities_tags` (`id`, `tag_id`, `activity_id`) VALUES
('00000000-0000-0000-0014-000000000001', '00000000-0000-0000-0002-300000000000', '00000000-0000-0000-0010-100000000000'),
('00000000-0000-0000-0014-000000000002', '00000000-0000-0000-0002-300000000000', '00000000-0000-0000-0010-200000000000'),
('00000000-0000-0000-0014-000000000003', '00000000-0000-0000-0002-300000000000', '00000000-0000-0000-0010-300000000000'),
('00000000-0000-0000-0014-000000000004', '00000000-0000-0000-0002-500000000000', '00000000-0000-0000-0010-150000000000'),
('00000000-0000-0000-0014-000000000005', '00000000-0000-0000-0002-600000000000', '00000000-0000-0000-0010-160000000000');

INSERT INTO `activities_target_groups` (`id`, `activity_id`, `target_group_id`) VALUES
('00000000-0000-0000-0015-000000000001', '00000000-0000-0000-0010-140000000000', '00000000-0000-0000-0003-500000000000'),
('00000000-0000-0000-0015-000000000002', '00000000-0000-0000-0010-160000000000', '00000000-0000-0000-0003-600000000000');

INSERT INTO `schedules` (`id`, `start_date`, `end_date`, `activity_id`) VALUES
('00000000-0000-0000-0011-100000000000', '2018-04-19 13:00:00', '2018-04-19 15:00:00', '00000000-0000-0000-0010-100000000000'),
('00000000-0000-0000-0011-200000000000', '2018-04-20 13:00:00', '2018-04-20 15:00:00', '00000000-0000-0000-0010-200000000000'),
('00000000-0000-0000-0011-300000000000', '2018-04-21 13:00:00', '2018-04-21 15:00:00', '00000000-0000-0000-0010-300000000000'),
('00000000-0000-0000-0011-400000000000', '2018-04-21 14:00:00', '2018-04-22 16:00:00', '00000000-0000-0000-0010-300000000000'),
('00000000-0000-0000-0011-500000000000', '2099-04-21 14:00:00', '2099-04-22 16:00:00', '00000000-0000-0000-0010-300000000000'),
('00000000-0000-0000-0011-600000000000', '2099-04-21 14:00:00', '2099-04-22 16:00:00', '00000000-0000-0000-0010-110000000000'),
('00000000-0000-0000-0011-700000000000', '2099-04-21 14:00:00', '2099-04-22 16:00:00', '00000000-0000-0000-0010-120000000000'),
('00000000-0000-0000-0011-800000000000', '2099-04-21 14:00:00', '2099-04-22 16:00:00', '00000000-0000-0000-0010-130000000000'),
('00000000-0000-0000-0011-900000000000', '2099-04-21 14:00:00', '2099-04-22 16:00:00', '00000000-0000-0000-0010-140000000000'),
('00000000-0000-0000-0011-110000000000', '2099-04-21 14:00:00', '2099-04-22 16:00:00', '00000000-0000-0000-0010-150000000000'),
('00000000-0000-0000-0011-120000000000', '2099-04-21 14:00:00', '2099-04-22 16:00:00', '00000000-0000-0000-0010-160000000000'),
('00000000-0000-0000-0011-130000000000', '2099-04-21 14:00:00', '2099-04-22 16:00:00', '00000000-0000-0000-0010-170000000000'),
('00000000-0000-0000-0011-140000000000', '2000-04-21 14:00:00', '2000-04-22 16:00:00', '00000000-0000-0000-0010-180000000000');

INSERT INTO `i18n` (`id`, `locale`, `model`, `foreign_key`, `field`, `content`) VALUES
('00000000-0000-0000-0012-100000000000', 'es', 'Organisations', '00000000-0000-0000-0008-600000000000', 'description', 'tracudir organización'),
('00000000-0000-0000-0012-200000000000', 'fr', 'Organisations', '00000000-0000-0000-0008-600000000000', 'description', 'traduire organisation'),
('00000000-0000-0000-0012-300000000000', 'es', 'Activities', '00000000-0000-0000-0010-800000000000', 'name', 'actividad'),
('00000000-0000-0000-0012-400000000000', 'fr', 'Activities', '00000000-0000-0000-0010-800000000000', 'name', 'activité'),
('00000000-0000-0000-0012-500000000000', 'es', 'Activities', '00000000-0000-0000-0010-900000000000', 'name', 'Aktivität2_name_übersetzt_es'),
('00000000-0000-0000-0012-600000000000', 'fr', 'Activities', '00000000-0000-0000-0010-900000000000', 'name', 'Aktivität2_name_übersetzt_fr'),
('00000000-0000-0000-0012-700000000000', 'es', 'Activities', '00000000-0000-0000-0010-800000000000', 'description', 'tracudir actividad'),
('00000000-0000-0000-0012-800000000000', 'fr', 'Activities', '00000000-0000-0000-0010-800000000000', 'description', 'traduire activité'),
('00000000-0000-0000-0012-900000000000', 'es', 'Activities', '00000000-0000-0000-0010-900000000000', 'description', 'Aktivität2_description_übersetzt_es'),
('00000000-0000-0000-0012-110000000000', 'fr', 'Activities', '00000000-0000-0000-0010-900000000000', 'description', 'Aktivität2_description_übersetzt_fr'),
('00000000-0000-0000-0012-120000000000', 'es', 'Tags', '00000000-0000-0000-0002-300000000000', 'name', 'tag_tagTranslateRead_es'),
('00000000-0000-0000-0012-130000000000', 'fr', 'Tags', '00000000-0000-0000-0002-300000000000', 'name', 'tag_tagTranslateRead_fr'),
('00000000-0000-0000-0012-140000000000', 'es', 'Tags', '00000000-0000-0000-0002-400000000000', 'name', 'tag_tagTranslateEdit_es'),
('00000000-0000-0000-0012-150000000000', 'fr', 'Tags', '00000000-0000-0000-0002-400000000000', 'name', 'tag_tagTranslateEdit_fr'),
('00000000-0000-0000-0012-160000000000', 'es', 'TargetGroups', '00000000-0000-0000-0003-300000000000', 'name', 'target_TranslateRead_es'),
('00000000-0000-0000-0012-170000000000', 'fr', 'TargetGroups', '00000000-0000-0000-0003-300000000000', 'name', 'target_TranslateRead_fr'),
('00000000-0000-0000-0012-180000000000', 'es', 'TargetGroups', '00000000-0000-0000-0003-400000000000', 'name', 'target_TranslateEdit_es'),
('00000000-0000-0000-0012-190000000000', 'fr', 'TargetGroups', '00000000-0000-0000-0003-400000000000', 'name', 'target_TranslateEdit_fr'),
('00000000-0000-0000-0012-210000000000', 'en', 'TargetGroups', '00000000-0000-0000-0003-100000000000', 'name', 'target_TranslateDelete_en'),
('00000000-0000-0000-0012-220000000000', 'es', 'Categories', '00000000-0000-0000-0007-500000000000', 'name', 'category_TranslateRead_es'),
('00000000-0000-0000-0012-230000000000', 'fr', 'Categories', '00000000-0000-0000-0007-500000000000', 'name', 'category_TranslateRead_fr'),
('00000000-0000-0000-0012-240000000000', 'es', 'Categories', '00000000-0000-0000-0007-600000000000', 'name', 'category_TranslateEdit_es'),
('00000000-0000-0000-0012-250000000000', 'fr', 'Categories', '00000000-0000-0000-0007-600000000000', 'name', 'category_TranslateEdit_fr'),
('00000000-0000-0000-0012-260000000000', 'en', 'Categories', '00000000-0000-0000-0007-100000000000', 'name', 'category_TranslateDelete_en'),
('00000000-0000-0000-0012-270000000000', 'es', 'Translations', '00000000-0000-0000-0013-100000000000', 'name', 'translations_read_es'),
('00000000-0000-0000-0012-280000000000', 'fr', 'Translations', '00000000-0000-0000-0013-100000000000', 'name', 'translations_read_fr'),
('00000000-0000-0000-0012-290000000000', 'es', 'Translations', '00000000-0000-0000-0013-200000000000', 'name', 'translations_edit_es'),
('00000000-0000-0000-0012-310000000000', 'fr', 'Translations', '00000000-0000-0000-0013-300000000000', 'name', 'translations_edit_fr');

INSERT INTO `translations` (`id`, `locale`, `name`) VALUES
('00000000-0000-0000-0013-100000000000', 'es', 'ToRead'),
('00000000-0000-0000-0013-200000000000', 'fr', 'ToEdit'),
('00000000-0000-0000-0013-300000000000', 'en', 'ToDelete');
