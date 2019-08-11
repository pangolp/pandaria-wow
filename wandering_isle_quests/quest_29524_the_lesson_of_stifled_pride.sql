-- Quest: 29524 / the-lesson-of-stifled-pride
-- Npc 54586 / Huojin Trainee
-- Npc 54587 / Tushui Trainee
-- Npc 65470 / Huojin Trainee
-- Npc 65471 / Tushui Trainee


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

DELETE FROM `smart_scripts` WHERE `entryorguid`=@NPC AND `source_type`=0;
