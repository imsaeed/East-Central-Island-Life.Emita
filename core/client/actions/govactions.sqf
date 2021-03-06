_role = player;
_tempAction = 0;

//========================   Help info and tutorials  ================================
_tempAction = _role addaction ["Fire Rescue Rules and Tutorials","core\client\esuhelp.sqf",[1],1,false,true,"","player distance atm5 <= 10"];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Use Fire Extinguisher","core\client\ems.sqf",[],1,false,true,"",'_vcl = (nearestobjects [getpos player, ["firetruck","ibr_as350","Laddertruck","il_f350_brush"], 40] select 0);player distance _vcl < 50'];
actionList set [count actionList, _tempAction];
//=======================   ADMIN CAMERA ==============================================
_tempAction = _role addaction ["Admin Spectate","tcgcode.sqf",[1],1,false,true,"","player distance rubblepile <= 3"];
actionList set [count actionList, _tempAction];
//========================================Elevaotr======================================================
_tempAction = _role addaction ["Up Elevator","elevator.sqf",[1],1,false,true,"",'player distance getmarkerpos "elevator1" <= 5'];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Down Elevator","elevator.sqf",[2],1,false,true,"",'player distance elevator2 <= 5'];
actionList set [count actionList, _tempAction];
//===================================== IMPOUND AREA==================================================
_tempAction = _role addaction ["Impound Lot","core\client\maindialogs.sqf",["impound"],1,false,true,"","player distance impoundbuy <= 5"];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Impound Lot","core\client\maindialogs.sqf",["impound"],1,false,true,"","player distance copcar <= 5"];
actionList set [count actionList, _tempAction];
//==================================== OBJECT ACTIONS =================================================
_tempAction = _role addaction ["Remove Taki Flag","core\global\noscript.sqf",'if (((call INV_GetOwnWeight) + ("FlagCarrierTakistanKingdom_EP1" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["FlagCarrierTakistanKingdom_EP1"],  3] select 0);["FlagCarrierTakistanKingdom_EP1", 1] call INV_AddInvItem;player groupchat "you picked up a flag";',1,true,true,"",'player distance (nearestobjects [getpos player, ["FlagCarrierTakistanKingdom_EP1"],  3] select 0) < 15'];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Remove Russian Flag","core\global\noscript.sqf",'if (((call INV_GetOwnWeight) + ("FlagCarrierRU" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["FlagCarrierRU"],  3] select 0);["FlagCarrierRU", 1] call INV_AddInvItem;player groupchat "you picked up a flag";',1,true,true,"",'player distance (nearestobjects [getpos player, ["FlagCarrierRU"],  3] select 0) < 15'];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Remove US Flag","core\global\noscript.sqf",'if (((call INV_GetOwnWeight) + ("FlagCarrierUSA" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["FlagCarrierUSA"],  3] select 0);["FlagCarrierUSA", 1] call INV_AddInvItem;player groupchat "you picked up a flag";',1,true,true,"",'player distance (nearestobjects [getpos player, ["FlagCarrierUSA"],  3] select 0) < 15'];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Remove Czech Flag","core\global\noscript.sqf",'if (((call INV_GetOwnWeight) + ("FlagCarrierCzechRepublic_EP1" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["FlagCarrierCzechRepublic_EP1"],  3] select 0);["FlagCarrierCzechRepublic_EP1", 1] call INV_AddInvItem;player groupchat "you picked up a flag";',1,true,true,"",'player distance (nearestobjects [getpos player, ["FlagCarrierCzechRepublic_EP1"],  3] select 0) < 15'];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Remove German Flag","core\global\noscript.sqf",'if (((call INV_GetOwnWeight) + ("FlagCarrierGermany_EP1" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["FlagCarrierGermany_EP1"],  3] select 0);["FlagCarrierGermany_EP1", 1] call INV_AddInvItem;player groupchat "you picked up a flag";',1,true,true,"",'player distance (nearestobjects [getpos player, ["FlagCarrierGermany_EP1"],  3] select 0) < 15'];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Remove GB Flag","core\global\noscript.sqf",'if (((call INV_GetOwnWeight) + ("FlagCarrierBAF" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["FlagCarrierBAF"],  3] select 0);["FlagCarrierBAF", 1] call INV_AddInvItem;player groupchat "you picked up a flag";',1,true,true,"",'player distance (nearestobjects [getpos player, ["FlagCarrierBAF"],  3] select 0) < 15'];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Take Scuba Gear","core\global\noscript.sqf",'if (((call INV_GetOwnWeight) + ("gnt_scubaw" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["gnt_scubaw"],  10] select 0);["gnt_scubaw", 1] call INV_AddInvItem;player groupchat "you picked up scuba gear";',1,true,true,"",'player distance (nearestobjects [getpos player, ["gnt_scubaw"],  10] select 0) < 5'];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Remove Stop Sign","core\global\noscript.sqf",'if (((call INV_GetOwnWeight) + ("glt_roadsign_octagon" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["glt_roadsign_octagon"],  10] select 0);["glt_roadsign_octagon", 1] call INV_AddInvItem;player groupchat "you picked up a stop sign";',1,true,true,"",' player distance (nearestobjects [getpos player, ["glt_roadsign_octagon"],  10] select 0) < 7'];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Remove Roadblock","core\global\noscript.sqf",'if (((call INV_GetOwnWeight) + ("roadblock" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["Land_CncBlock_Stripes"],  3] select 0);["roadblock", 1] call INV_AddInvItem;player groupchat "you picked up a roadblock";',1,true,true,"",'player distance (nearestobjects [getpos player, ["Land_CncBlock_Stripes"],  3] select 0) < 5 '];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Remove Bargate","core\global\noscript.sqf",'if (((call INV_GetOwnWeight) + ("Bargate" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["ZavoraAnim"],  10] select 0);["Bargate", 1] call INV_AddInvItem;player groupchat "you picked up a bargate";',1,true,true,"",' player distance (nearestobjects [getpos player, ["ZavoraAnim"],  10] select 0) < 7'];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Remove Road Cone","core\global\noscript.sqf",'if (((call INV_GetOwnWeight) + ("roadcone" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["Land_coneLight"],  3] select 0);["roadcone", 1] call INV_AddInvItem;player groupchat "you picked up a road cone";',1,true,true,"",'player distance (nearestobjects [getpos player, ["Land_coneLight"],  3] select 0) < 5'];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Open/close gate","core\global\noscript.sqf",'_gate = (nearestobjects [getpos player, ["ZavoraAnim"],  10] select 0); if(_gate animationPhase "bargate" == 1)then{_gate animate ["bargate", 0]}else{_gate animate ["bargate", 1]};',1,true,true,"",'player distance (nearestobjects [getpos player, ["ZavoraAnim"],  10] select 0) < 7 '];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Remove Bunker (small)","core\global\noscript.sqf",'if (((call INV_GetOwnWeight) + ("bunkersmall" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["Land_fortified_nest_small"],  3] select 0);["bunkersmall", 1] call INV_AddInvItem;player groupchat "you picked up a bunker (small)";',1,true,true,"",' player distance (nearestobjects [getpos player, ["Land_fortified_nest_small"],  3] select 0) < 5'];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Remove Danger Sign","core\global\noscript.sqf",'if (((call INV_GetOwnWeight) + ("danger" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["Sign_Danger"],  3] select 0);["danger", 1] call INV_AddInvItem;player groupchat "you picked up a danger sign";',1,true,true,"",'player distance (nearestobjects [getpos player, ["Sign_danger"],  3] select 0) < 5'];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Remove ladder","core\global\noscript.sqf",'if (((call INV_GetOwnWeight) + ("land_ladder_half" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["land_ladder_half"],  3] select 0);["land_ladder_half", 1] call INV_AddInvItem;player groupchat "you picked up a ladder";',1,true,true,"",' player distance (nearestobjects [getpos player, ["land_ladder_half"],  3] select 0) < 5'];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Remove Road Barrier","core\global\noscript.sqf",'if (((call INV_GetOwnWeight) + ("Land_RedWhiteBarrier" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["Land_RedWhiteBarrier"],  3] select 0);["Land_RedWhiteBarrier", 1] call INV_AddInvItem;player groupchat "you picked up a road barrier";',1,true,true,"",' player distance (nearestobjects [getpos player, ["Land_RedWhiteBarrier"],  3] select 0) < 5'];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Remove Road Barrier","core\global\noscript.sqf",'if (((call INV_GetOwnWeight) + ("Roadbarrier_long" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["RoadBarrier_long"],  3] select 0);["RoadBarrier_long", 1] call INV_AddInvItem;player groupchat "you picked up a road barrier";',1,true,true,"",' player distance (nearestobjects [getpos player, ["RoadBarrier_long"],  3] select 0) < 5'];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Remove Road Barrier","core\global\noscript.sqf",'if (((call INV_GetOwnWeight) + ("RoadBarrier_light" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["RoadBarrier_light"],  3] select 0);["RoadBarrier_light", 1] call INV_AddInvItem;player groupchat "you picked up a road barrier";',1,true,true,"",' player distance (nearestobjects [getpos player, ["RoadBarrier_light"],  3] select 0) < 5'];
actionList set [count actionList, _tempAction];
//==================================== MAYOR ELECTION =================================================
_tempAction = _role addaction ["Elect a Governor","core\client\maindialogs.sqf",["wahlen"],1,false,true,"","player distance rathaus <= 3"];
actionList set [count actionList, _tempAction];
//===================================== MAYOR ACTIONS =================================================
_tempAction = _role addaction ["Change the Law","core\client\maindialogs.sqf",["gesetz"],1,false,true,"","player distance rathaus <= 3 and isMayor"];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Change taxes","core\client\maindialogs.sqf",["steuern"],1,false,true,"","player distance rathaus <= 3 and isMayor"];
actionList set [count actionList, _tempAction];
//===================================== BUY INSURANCE ===================================================
//_tempAction = _role addaction [format["Buy Bank Insurance ($%1)", ("bankversicherung" call INV_getitemBuyCost)],"core\global\noscript.sqf",'if("geld" call INV_GetItemAmount < ("bankversicherung" call INV_getitemBuyCost))exitwith{player groupchat "not enough money"};["geld", -("bankversicherung" call INV_getitemBuyCost)] call INV_AddInvItem;["bankversicherung", 1] call INV_AddInvItem;player groupchat format["you bought bank insurance for $%1", ("bankversicherung" call INV_getitemBuyCost)];',1,false,true,"","player distance mainbank <= 3"];
//actionList set [count actionList, _tempAction];
//======================================= CRIMELOG ====================================================
_tempAction = _role addaction ["Crime Log","core\client\maindialogs.sqf",["coplog"],1,false,true,"","player distance rathaus <= 3"];
actionList set [count actionList, _tempAction];
//========================================= BAIL ======================================================	 
_tempAction = _role addaction [format ["Pay Bail", slave_cost],"core\client\maindialogs.sqf", ["bail"],1,false,true,"","player distance bailflag <= 3 and isciv"];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Get in Trailer","core\client\trucking.sqf",[4],1,true,true,"",'_vcl = (nearestobjects [getpos player, ["cl_del_mackr","cl_trucktest_mackr","cl_flatbed_mackr"], 5] select 0);player distance _vcl < 5 and _vcl in INV_ServerVclArray'];
actionList set [count actionList, _tempAction];
//====================================== VEHICLE ACTIONS ================================================
_tempAction = _role addaction ["Impound vehicle","core\global\noscript.sqf",'_vcl = (nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0);[_vcl, "impound"] execVM "core\client\impound.sqf";',1,true,true,"",'_vcl = (nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0);_vcl in INV_ServerVclArray and player distance _vcl < 10'];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Pull out","core\global\noscript.sqf",'(nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0) execVM "core\client\pullout.sqf";',1,true,true,"",'_vcl = (nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0);player distance _vcl < 5 and count (crew _vcl) > 0 and _vcl in INV_ServerVclArray and (call INV_isArmed)'];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction [localize "STRS_addAction_vehicleinfo","core\global\noscript.sqf",'(nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0) execVM "core\client\vehinfo.sqf";',1,true,true,"",'_vcl = (nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0);player distance _vcl < 5 and _vcl in INV_ServerVclArray'];
actionList set [count actionList, _tempAction];
//===================================PLANTS=================================
_tempAction = _role addaction ["Remove Betul Bush","core\global\noscript.sqf",'if (((call INV_GetOwnWeight) + ("MAP_b_betulaHumilis" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["MAP_b_betulaHumilis"],  3] select 0);["MAP_b_betulaHumilis", 1] call INV_AddInvItem;player groupchat "you picked up a bush";',1,true,true,"",'player distance (nearestobjects [getpos player, ["MAP_b_betulaHumilis"],  3] select 0) < 5'];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Remove Canina Bush","core\global\noscript.sqf",'if (((call INV_GetOwnWeight) + ("MAP_b_canina2s" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["MAP_b_canina2s"],  3] select 0);["MAP_b_canina2s", 1] call INV_AddInvItem;player groupchat "you picked up a bush";',1,true,true,"",'player distance (nearestobjects [getpos player, ["MAP_b_canina2s"],  3] select 0) < 5'];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Remove Craet Bush","core\global\noscript.sqf",'if (((call INV_GetOwnWeight) + ("MAP_b_craet2" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["MAP_b_craet2"],  3] select 0);["MAP_b_craet2", 1] call INV_AddInvItem;player groupchat "you picked up a bush";',1,true,true,"",'player distance (nearestobjects [getpos player, ["MAP_b_craet2"],  3] select 0) < 5'];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Remove Sambucus Bush","core\global\noscript.sqf",'if (((call INV_GetOwnWeight) + ("MAP_b_sambucus" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["MAP_b_sambucus"],  3] select 0);["MAP_b_sambucus", 1] call INV_AddInvItem;player groupchat "you picked up a bush";',1,true,true,"",'player distance (nearestobjects [getpos player, ["MAP_b_sambucus"],  3] select 0) < 5'];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Remove Salix Bush","core\global\noscript.sqf",'if (((call INV_GetOwnWeight) + ("MAP_b_salix2s" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["MAP_b_salix2s"],  3] select 0);["MAP_b_salix2s", 1] call INV_AddInvItem;player groupchat "you picked up a bush";',1,true,true,"",'player distance (nearestobjects [getpos player, ["MAP_b_salix2s"],  3] select 0) < 5'];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Remove Prunus Bush","core\global\noscript.sqf",'if (((call INV_GetOwnWeight) + ("MAP_b_prunus" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["MAP_b_prunus"],  3] select 0);["MAP_b_prunus", 1] call INV_AddInvItem;player groupchat "you picked up a bush";',1,true,true,"",'player distance (nearestobjects [getpos player, ["MAP_b_prunus"],  3] select 0) < 5'];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Remove Pmugo Bush","core\global\noscript.sqf",'if (((call INV_GetOwnWeight) + ("MAP_b_pmugo" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["MAP_b_pmugo"],  3] select 0);["MAP_b_pmugo", 1] call INV_AddInvItem;player groupchat "you picked up a bush";',1,true,true,"",'player distance (nearestobjects [getpos player, ["MAP_b_pmugo"],  3] select 0) < 5'];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Remove Corylus Bush","core\global\noscript.sqf",'if (((call INV_GetOwnWeight) + ("MAP_b_corylus" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["MAP_b_corylus"],  3] select 0);["MAP_b_corylus", 1] call INV_AddInvItem;player groupchat "you picked up a bush";',1,true,true,"",'player distance (nearestobjects [getpos player, ["MAP_b_corylus"],  3] select 0) < 5'];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Remove Craet Bush","core\global\noscript.sqf",'if (((call INV_GetOwnWeight) + ("MAP_b_craet1" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["MAP_b_craet1"],  3] select 0);["MAP_b_craet1", 1] call INV_AddInvItem;player groupchat "you picked up a bush";',1,true,true,"",'player distance (nearestobjects [getpos player, ["MAP_b_craet1"],  3] select 0) < 5'];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Remove Corylus Bush","core\global\noscript.sqf",'if (((call INV_GetOwnWeight) + ("MAP_b_corylus2s" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["MAP_b_corylus2s"],  3] select 0);["MAP_b_corylus2s", 1] call INV_AddInvItem;player groupchat "you picked up a bush";',1,true,true,"",'player distance (nearestobjects [getpos player, ["MAP_b_corylus2s"],  3] select 0) < 5'];
actionList set [count actionList, _tempAction];
//======================================== SHOP EXPORT ==================================================
_num1 = (shop1 call INV_getshopnum);
_num2 = (shop2 call INV_getshopnum);
_num4 = (shop4 call INV_getshopnum);
_num5 = (pdfood call INV_getshopnum);
_tempAction = _role addaction ["Shop 1 export","core\client\shopdialogs.sqf",[_num1],1,false,true,"","player distance shop1export <= 3"];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Shop 2 export","core\client\shopdialogs.sqf",[_num2],1,false,true,"","player distance shop2export <= 3"];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Shop 3 export","core\client\shopdialogs.sqf",[_num3],1,false,true,"","player distance shop3export <= 3"];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Shop 4 export","core\client\shopdialogs.sqf",[_num4],1,false,true,"","player distance shop4export <= 3"];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Food and Candy","core\client\shopdialogs.sqf",[_num5],1,false,true,"",'player distance (nearestobjects [getpos player, ["ibr_van_BNK"],  10] select 0) < 3'];
actionList set [count actionList, _tempAction];
//========================   unflip vehicle     ================================
_tempAction = _role addaction ["Unflip vehicle","core\client\unflipvehicle.sqf",["unflip"],1,false,true,"",'_vcl = (nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0);player distance _vcl < 5 and _vcl in INV_VehicleArray'];
actionList set [count actionList, _tempAction];
//ESU
//_tempAction = _role addaction ["Get Oil","core\client\oil.sqf",["getoil"],1,false,true,"","player distance oilrig1 < 10 or player distance oilrig2 < 10"];
//actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Repair vehicle","core\global\noscript.sqf",'_vcl = (nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0);[_vcl] execVM "core\client\repairvehicle.sqf";',1,true,true,"",'_vcl = (nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0);_vcl in INV_ServerVclArray and player distance _vcl < 10'];
actionList set [count actionList, _tempAction];
//_tempAction = _role addaction ["Start CPR","core\global\noscript.sqf",'_vcl = (nearestobjects [getpos player, ["Man"], 3] select 1);[_vcl] execVM "cpr.sqf";',1,true,true,"",'_vcl = (nearestobjects [getpos player, ["Man"], 3] select 1);player distance _vcl < 2'];
//actionList set [count actionList, _tempAction];
//========================= Vehicle Save ========================================
_tempAction = _role addaction ["Store Vehicle", "core\client\vehicleSave.sqf", [], 1, false, true, "", "player distance carSave <= 5"];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Retrieve Vehicle", "core\client\vehicleRetrieve.sqf", [civCarRespawn, carSave], 1, false, true, "", "player distance carSave <= 5"];
actionList set [count actionList, _tempAction];
//======================================== Donate shop===================================================
_num15 = (donatebuy1 call INV_getshopnum);
_tempAction = _role addaction ["Donator Shop","core\client\shopdialogs.sqf",[_num15],1,false,true,"","player distance donatebuy1 <= 5"];
actionList set [count actionList, _tempAction];