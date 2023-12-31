import crafttweaker.api.advancement.Advancement;
import crafttweaker.api.events.CTEventManager;
import crafttweaker.api.event.entity.player.interact.RightClickBlockEvent;
import crafttweaker.api.world.ServerLevel;
import crafttweaker.api.events.CTEventManager;
import mods.gamestages.events.GameStageAdded;


CTEventManager.register<crafttweaker.api.event.entity.player.interact.RightClickBlockEvent>((event) => {
    if event.player.level.isClientSide() {
        return;
    }
    var world = event.player.level as ServerLevel;
    var server = world.server;
    server.executeCommand("say ------------------------", false);
    server.executeCommand("say night1: " + event.player.hasGameStage("night1"), false);
    server.executeCommand("say night2: " + event.player.hasGameStage("night2"), false);
    server.executeCommand("say night3: " + event.player.hasGameStage("night3"), false);
});


// if player has night1 gamestage (killed first boss)
// if 1 day has passed
// replace night1 gamestage with night2 gamestage
// if night2 gamestage, reduce day length
// repeat


// Increase the speed of day time by 0.55 each day after the first boss dies
// night1 gamestage is gained via achievement
val dayLengths = [1200, 1143, 1091, 1043, 1000, 960, 923, 889, 857, 828, 800, 774, 750, 727, 706, 686, 667, 649, 632, 615] as int[];
for i, dayLength in dayLengths {
    var totalCycleLength as int = dayLength + 1200; // Day length + 20 min (1200s) night length
    var uniqueID = "UniqueID" + (i + 1);
    var currentStage = "night" + (i + 1);
    var nextStage = "night" + (i + 2);
    mods.timestages.Timers.addTimer(uniqueID, currentStage, nextStage, totalCycleLength, "seconds", true);
}

CTEventManager.register<GameStageAdded>((event) => {
    if event.player.level.isClientSide() {
        return;
    }
    var world = event.player.level as ServerLevel;
    var server = world.server;
    // The code in here will be ran every time a player is granted a stage.    
    switch (event.stage) {
        case "night2":
            server.executeCommand("hourglass config daySpeed 0.60", false);
            break;
        case "night3":
            server.executeCommand("hourglass config daySpeed 0.65", false);
            break;
        case "night4":
            server.executeCommand("hourglass config daySpeed 0.70", false);
            break;
        case "night5":
            server.executeCommand("hourglass config daySpeed 0.75", false);
            break;
        case "night6":
            server.executeCommand("hourglass config daySpeed 0.80", false);
            break;
        case "night7":
            server.executeCommand("hourglass config daySpeed 0.85", false);
            break;
        case "night8":
            server.executeCommand("hourglass config daySpeed 0.90", false);
            break;
        case "night9":
            server.executeCommand("hourglass config daySpeed 0.95", false);
            break;
        case "night10":
            server.executeCommand("hourglass config daySpeed 1.0", false);
            break;
        case "night11":
            server.executeCommand("hourglass config daySpeed 1.05", false);
            break;
        case "night12":
            server.executeCommand("hourglass config daySpeed 1.10", false);
            break;
        case "night13":
            server.executeCommand("hourglass config daySpeed 1.15", false);
            break;
        case "night14":
            server.executeCommand("hourglass config daySpeed 1.20", false);
            break;
        case "night15":
            server.executeCommand("hourglass config daySpeed 1.25", false);
            break;
        case "night16":
            server.executeCommand("hourglass config daySpeed 1.30", false);
            break;
        case "night17":
            server.executeCommand("hourglass config daySpeed 1.35", false);
            break;
        case "night18":
            server.executeCommand("hourglass config daySpeed 1.40", false);
            break;
        case "night19":
            server.executeCommand("hourglass config daySpeed 1.45", false);
            break;
        case "night20":
            server.executeCommand("hourglass config daySpeed 1.50", false);
            break;
        case "night21":
            server.executeCommand("hourglass config daySpeed 1.55", false);
            break;
        case "night22":
            server.executeCommand("hourglass config daySpeed 1.60", false);
            break;
        case "night23":
            server.executeCommand("hourglass config daySpeed 1.65", false);
            break;
        case "night24":
            server.executeCommand("hourglass config daySpeed 1.70", false);
            break;
        case "night25":
            server.executeCommand("hourglass config daySpeed 1.75", false);
            break;
        case "night26":
            server.executeCommand("hourglass config daySpeed 1.80", false);
            break;
        case "night27":
            server.executeCommand("hourglass config daySpeed 1.85", false);
            break;
        case "night28":
            server.executeCommand("hourglass config daySpeed 1.90", false);
            break;
        case "night29":
            server.executeCommand("hourglass config daySpeed 1.95", false);
            break;
        case "night30":
            server.executeCommand("hourglass config daySpeed 2.00", false);
            break;
    }

});

// mods.timestages.Timers.addTimer("UniqueID", "neededStage" ,"UnlockedStage" ,30 ,"seconds");
//mods.timestages.Timers.addTimer("UniqueID1", "night1" ,"night2" ,60 ,"seconds", true); // triggers on the 1st night after boss death
//mods.timestages.Timers.addTimer("UniqueID2", "night2" ,"night3" ,100 ,"seconds", true); // 60s night + 30s day
//mods.timestages.Timers.addTimer("UniqueID3", "night3" ,"night4" ,75 ,"seconds", true); // 60s night + 15s day




//hourglass config daySpeed 1.1