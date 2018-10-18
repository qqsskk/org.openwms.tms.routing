-- Locations
insert into rsrv_location (c_location_id,c_location_group_name,c_pk,c_ol,c_pid,c_created,c_updated) values ('STCK/0001/0001/0000/0000','REC_CONV',0,0,'316869541651',now(),now());
insert into rsrv_location (c_location_id,c_location_group_name,c_pk,c_ol,c_pid,c_created,c_updated) values ('STCK/0001/0002/0000/0000','REC_CONV',1,1,'705831012876',now(),now());

-- Routes
insert into rsrv_route (c_name,c_description,c_source_location,c_target_location,c_source_loc_group_name,c_target_loc_group_name, c_enabled, c_pk, c_ol, c_created, c_updated,c_pid) values ('SRC_TRG','Source -> Target' ,0,1,null,null,true,'10000',0,now(),now(),'709957655206');


insert into rsrv_route (c_name,c_description,c_source_location,c_target_location,c_source_loc_group_name,c_target_loc_group_name, c_enabled, c_pk, c_ol, c_created, c_updated,c_pid) values ('REC_CONV','Cartons coming from outside to the stock.',0,0,'REC_CONV','FGRECEIVING', true,'10001',0,now(),now(),'709957655206');
insert into rsrv_route (c_name,c_description,c_source_location,c_target_location,c_source_loc_group_name,c_target_loc_group_name, c_enabled, c_pk, c_ol, c_created, c_updated,c_pid) values ('CONVCONV','Cartons that should stay on the conveyor',0,0,'REC_CONV','FGCONVEYOR', true,'10002',0,now(),now(),'889085346017');
insert into rsrv_route (c_name,c_description,c_source_location,c_target_location,c_source_loc_group_name,c_target_loc_group_name, c_enabled, c_pk, c_ol, c_created, c_updated,c_pid) values ('SHIPERR_','Cartons from shipping to conveyor ',null,1,'FGSHIPPING','', true,'10003',0,now(),now(),'920761607535');
insert into rsrv_route (c_name,c_description,c_source_location,c_target_location,c_source_loc_group_name,c_target_loc_group_name, c_enabled, c_pk, c_ol, c_created, c_updated,c_pid) values ('CS1_OUT_','Cartons of aisle 1 to out position',null,1,'FGAISLE1','', true,'10004',0,now(),now(),'11168458889');
insert into rsrv_route (c_name,c_description,c_source_location,c_target_location,c_source_loc_group_name,c_target_loc_group_name, c_enabled, c_pk, c_ol, c_created, c_updated,c_pid) values ('CS2_OUT_','Cartons of aisle 2 to out position',null,1,'FGAISLE2','', true,'10006',0,now(),now(),'32391655610');
insert into rsrv_route (c_name,c_description,c_source_location,c_target_location,c_source_loc_group_name,c_target_loc_group_name, c_enabled, c_pk, c_ol, c_created, c_updated,c_pid) values ('FG__ERR_','Cartons from anywhere in the flatgood area to the error location',null,'1','FLATGOOD_AREA','', true,'10007',0,now(),now(),'613429031593');
insert into rsrv_route (c_name,c_description,c_source_location,c_target_location,c_source_loc_group_name,c_target_loc_group_name, c_enabled, c_pk, c_ol, c_created, c_updated,c_pid) values ('_NO_ROUTE','No Route',0,null,null,null, true,'99998',0,now(),now(),'956033651143');
insert into rsrv_route (c_name,c_description,c_source_location,c_target_location,c_source_loc_group_name,c_target_loc_group_name, c_enabled, c_pk, c_ol, c_created, c_updated,c_pid) values ('_DEFAULT','Route All',0,null,null,null, true,'99999',0,now(),now(),'222590552091');
