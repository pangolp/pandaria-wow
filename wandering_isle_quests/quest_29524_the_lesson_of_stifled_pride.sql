-- Quest: 29524 / the-lesson-of-stifled-pride
SET @NPC:=54587; -- Tushui Trainee

UPDATE `creature_template` SET `AIName`='SmartAI', `ScriptName`='' WHERE `entry`=@NPC;

DELETE FROM `creature_text` WHERE `entry`=@NPC;

INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(@NPC,0,0,"Thank you for reminding me that I must train more diligently.",12,0,100,0,0,0,"Tushui Trainee say 0"),
(@NPC,0,1,"That was a good match. Thank you.",12,0,100,0,0,0,"Tushui Trainee say 1");

DELETE FROM `smart_scripts` WHERE `entryorguid`=@NPC AND `source_type`=0;
