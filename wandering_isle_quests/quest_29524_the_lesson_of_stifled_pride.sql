UPDATE `creature_template` SET `AIName`='SmartAI', `ScriptName`='' WHERE `entry` IN (54586, 54587, 65470, 65471);

DELETE FROM `creature_text` WHERE `entry` IN (54586, 54587, 65470, 65471);

INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(54586,0,0,"Thank you for reminding me that I must train more diligently.",12,0,100,0,0,0,"Huojin Trainee say 0"),
(54586,0,1,"That was a good match. Thank you.",12,0,100,0,0,0,"Huojin Trainee say 1"),
(54587,0,0,"Thank you for reminding me that I must train more diligently.",12,0,100,0,0,0,"Tushui Trainee say 0"),
(54587,0,1,"That was a good match. Thank you.",12,0,100,0,0,0,"Tushui Trainee say 1"),
(65470,0,0,"Thank you for reminding me that I must train more diligently.",12,0,100,0,0,0,"Huojin Trainee say 0"),
(65470,0,1,"That was a good match. Thank you.",12,0,100,0,0,0,"Huojin Trainee say 1"),
(65471,0,0,"Thank you for reminding me that I must train more diligently.",12,0,100,0,0,0,"Tushui Trainee say 0"),
(65471,0,1,"That was a good match. Thank you.",12,0,100,0,0,0,"Tushui Trainee say 1");

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (54586, 54587, 65470, 65471) AND `source_type`=0;

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(54586,0,0,1,25,0,100,0,0,0,0,0,42,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Huojin Trainee - On Reset - Set Invincibility Hp Level"),
(54586,0,1,0,61,0,100,0,0,0,0,0,2,7,0,0,0,0,0,1,0,0,0,0,0,0,0,"Huojin Trainee - On Link - Set Faction"),
(54586,0,2,3,2,0,100,0,0,1,0,0,33,54586,0,0,0,0,0,24,0,0,0,0,0,0,0,"Huojin Trainee - On Healt Pct %1 - KillCredit"),
(54586,0,3,4,61,0,100,0,0,0,0,0,24,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Huojin Trainee - On Link - Evade"),
(54586,0,4,5,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Huojin Trainee - On Link - Talk"),
(54586,0,5,0,61,0,100,0,0,0,0,0,41,5000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Huojin Trainee - On Link - Force Despawn 5s"),
(54587,0,0,1,25,0,100,0,0,0,0,0,42,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Tushui Trainee - On Reset - Set Invincibility Hp Level"),
(54587,0,1,0,61,0,100,0,0,0,0,0,2,7,0,0,0,0,0,1,0,0,0,0,0,0,0,"Tushui Trainee - On Link - Set Faction"),
(54587,0,2,3,2,0,100,0,0,1,0,0,33,54586,0,0,0,0,0,24,0,0,0,0,0,0,0,"Tushui Trainee - On Healt Pct %1 - KillCredit"),
(54587,0,3,4,61,0,100,0,0,0,0,0,24,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Tushui Trainee - On Link - Evade"),
(54587,0,4,5,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Tushui Trainee - On Link - Talk"),
(54587,0,5,0,61,0,100,0,0,0,0,0,41,5000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Tushui Trainee - On Link - Force Despawn 5s"),
(65470,0,0,1,25,0,100,0,0,0,0,0,42,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Huojin Trainee - On Reset - Set Invincibility Hp Level"),
(65470,0,1,0,61,0,100,0,0,0,0,0,2,7,0,0,0,0,0,1,0,0,0,0,0,0,0,"Huojin Trainee - On Link - Set Faction"),
(65470,0,2,3,2,0,100,0,0,1,0,0,33,54586,0,0,0,0,0,24,0,0,0,0,0,0,0,"Huojin Trainee - On Healt Pct %1 - KillCredit"),
(65470,0,3,4,61,0,100,0,0,0,0,0,24,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Huojin Trainee - On Link - Evade"),
(65470,0,4,5,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Huojin Trainee - On Link - Talk"),
(65470,0,5,0,61,0,100,0,0,0,0,0,41,5000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Huojin Trainee - On Link - Force Despawn 5s"),
(65471,0,0,1,25,0,100,0,0,0,0,0,42,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Tushui Trainee - On Reset - Set Invincibility Hp Level"),
(65471,0,1,0,61,0,100,0,0,0,0,0,2,7,0,0,0,0,0,1,0,0,0,0,0,0,0,"Tushui Trainee - On Link - Set Faction"),
(65471,0,2,3,2,0,100,0,0,1,0,0,33,54586,0,0,0,0,0,24,0,0,0,0,0,0,0,"Tushui Trainee - On Healt Pct %1 - KillCredit"),
(65471,0,3,4,61,0,100,0,0,0,0,0,24,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Tushui Trainee - On Link - Evade"),
(65471,0,4,5,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Tushui Trainee - On Link - Talk"),
(65471,0,5,0,61,0,100,0,0,0,0,0,41,5000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Tushui Trainee - On Link - Force Despawn 5s");
