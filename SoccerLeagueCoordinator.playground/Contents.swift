/*
 *      Project 1 - Soccer League Coordinator
 *      Jörg Klausewitz
 */

/*
 ####################################
 ############# Part 1 ###############
 ####################################
 */

/*
 Player datas
 
 1 Joe Smith;42;YES;Jim and Jan Smith
 2 Jill Tanner;36;YES;Clara Tanner
 3 Bill Bon;43;YES;Sara and Jenny Bon
 4 Eva Gordon;45;NO;Wendy and Mike Gordon
 5 Matt Gill;40;NO;Charles and Sylvia Gill
 6 Kimmy Stein;41;NO;Bill and Hillary Stein
 7 Sammy Adams;45;NO;Jeff Adams
 8 Karl Saygan;42;YES;Heather Bledsoe
 9 Suzane Greenberg;44;YES;Henrietta Dumas
 10 Sal Dali;41;NO;Gala Dali
 11 Joe Kavalier;39;NO;Sam and Elaine Kavalier
 12 Ben Finkelstein;44;NO;Aaron and Jill Finkelstein
 13 Diego Soto;41;YES;Robin and Sarika Soto
 14 Chloe Alaska;47;NO;David and Jamie Alaska
 15 Arnold Willis;43;NO;Claire Willis
 16 Phillip Helm;44;YES;Thomas Helm and Eva Jones
 17 Les Clay;42;YES;Wynonna Brown
 18 Herschel Krustofski;45;YES;Hyman and Rachel Krustofski
 */

let player1: [String: String] = ["name": "Joe Smith", "heightInInches": "42", "playedSoccerBefore": "true" , "guardiansNames": "Jim and Jan Smith"]

let player2: [String: String] = ["name": "Jill Tanner", "heightInInches": "36", "playedSoccerBefore": "true", "guardiansNames": "Clara Tanner"]

let player3: [String: String] = ["name": "Bill Bon", "heightInInches": "43", "playedSoccerBefore": "true", "guardiansNames": "Sara and Jenny Bon"]

let player4: [String: String] = ["name": "Eva Gordon", "heightInInches": "45", "playedSoccerBefore": "false", "guardiansNames": "Wendy and Mike Gordon"]

let player5: [String: String] = ["name": "Matt Gill", "heightInInches": "40", "playedSoccerBefore": "false", "guardiansNames": "Charles and Sylvia Gill"]

let player6: [String: String] = ["name": "Kimmy Stein", "heightInInches": "41", "playedSoccerBefore": "false", "guardiansNames": "Bill and Hillary Stein"]

let player7: [String: String] = ["name": "Sammy Adams", "heightInInches": "45", "playedSoccerBefore": "false", "guardiansNames": "Jeff Adams"]

let player8: [String: String] = ["name": "Karl Saygan", "heightInInches": "42", "playedSoccerBefore": "true", "guardiansNames": "Heather Bledsoe"]

let player9: [String: String] = ["name": "Suzane Greenberg", "heightInInches": "44", "playedSoccerBefore": "true", "guardiansNames": "Henrietta Dumas"]

let player10: [String: String] = ["name": "Sal Dali", "heightInInches": "41", "playedSoccerBefore": "false", "guardiansNames": "Gala Dali"]

let player11: [String: String] = ["name": "Joe Kavalier", "heightInInches": "39", "playedSoccerBefore": "false", "guardiansNames": "Sam and Elaine Kavalier"]

let player12: [String: String] = ["name": "Ben Finkelstein", "heightInInches": "44", "playedSoccerBefore": "false", "guardiansNames": "Aaron and Jill Finkelstein"]

let player13: [String: String] = ["name": "Diego Soto", "heightInInches": "41", "playedSoccerBefore": "true", "guardiansNames": "Robin and Sarika Soto"]

let player14: [String: String] = ["name": "Chloe Alaska", "heightInInches": "47", "playedSoccerBefore": "false", "guardiansNames": "David and Jamie Alaska"]

let player15: [String: String] = ["name": "Arnold Willis", "heightInInches": "43", "playedSoccerBefore": "false", "guardiansNames": "Claire Willis"]

let player16: [String: String] = ["name": "Phillip Helm", "heightInInches": "44", "playedSoccerBefore": "true", "guardiansNames": "Thomas Helm and Eva Jones"]

let player17: [String: String] = ["name": "Les Clay", "heightInInches": "42", "playedSoccerBefore": "true", "guardiansNames": "Wynonna Brown"]

let player18: [String: String] = ["name": "Herschel Krustofski", "heightInInches": "45", "playedSoccerBefore": "true", "guardiansNames": "Hyman and Rachel Krustofski"]


// All players
var players = [Dictionary<String, String>]()
// Players of team Sharks
var teamSharks = [Dictionary<String, String>]()
// Players of team Dragons
var teamDragons = [Dictionary<String, String>]()
// Players of team Raptors
var teamRaptors = [Dictionary<String, String>]()

var allTeams = [teamSharks, teamDragons, teamRaptors]


players.append(player1)
players.append(player2)
players.append(player3)
players.append(player4)
players.append(player5)
players.append(player6)
players.append(player7)
players.append(player8)
players.append(player9)
players.append(player10)
players.append(player11)
players.append(player12)
players.append(player13)
players.append(player14)
players.append(player15)
players.append(player16)
players.append(player17)
players.append(player18)

/*
 ####################################
 ############# Part 2 ###############
 ####################################
 */

var experiencedPlayers = 0
var averageHeight = 0.0

// Amount of experienced players in an array of dictionaries
func amountOfExperienced(players: [Dictionary<String, String>]) -> Int{
    var amountOfExperiencedPlayers = 0
    for player in players{
        if (player["playedSoccerBefore"] == "true") {
            amountOfExperiencedPlayers += 1
        }
    }
    return amountOfExperiencedPlayers
}

// Average height of players in an array of dictionaries
func averageHeightOf(players: [Dictionary<String, String>]) -> Double{
    var averageHeight: Double = 0
    for player in players{
        if Double(player["heightInInches"]!) != nil {
            averageHeight += Double(player["heightInInches"]!)!
        }
    }
    averageHeight = averageHeight / Double(players.count)
    return averageHeight
}

experiencedPlayers = amountOfExperienced(players: players)
averageHeight = averageHeightOf(players: players)

// Assigning the players to the teams
func assignPlayersToTeams(players: [Dictionary<String, String>], experiencedPlayers: Int){
    
    var experiencedPlayersDragons = 0
    var experiencedPlayersSharks = 0
    var experiencedPlayersRaptors = 0
    
    var notExperiencedPlayersDragons = 0
    var notExperiencedPlayersSharks = 0
    var notExperiencedPlayersRaptors = 0
    
    let maxExperiencedPlayersInTeam = experiencedPlayers / allTeams.count
    let maxNotExperiencedPlayersInTeam = (players.count - experiencedPlayers) / allTeams.count
    
    for player in players{
        switch player["playedSoccerBefore"] {
        case "true":
            if experiencedPlayersDragons < maxExperiencedPlayersInTeam{
                teamDragons.append(player)
                experiencedPlayersDragons += 1
            } else if (experiencedPlayersSharks < maxExperiencedPlayersInTeam){
                teamSharks.append(player)
                experiencedPlayersSharks += 1
            } else if (experiencedPlayersRaptors < maxExperiencedPlayersInTeam){
                teamRaptors.append(player)
                experiencedPlayersRaptors += 1
            }
        default:
            if notExperiencedPlayersDragons < maxNotExperiencedPlayersInTeam{
                teamDragons.append(player)
                notExperiencedPlayersDragons += 1
            } else if (notExperiencedPlayersSharks < maxNotExperiencedPlayersInTeam){
                teamSharks.append(player)
                notExperiencedPlayersSharks += 1
            } else if (notExperiencedPlayersRaptors < maxNotExperiencedPlayersInTeam){
                teamRaptors.append(player)
                notExperiencedPlayersRaptors += 1
            }
        } // switch
    } // loop
} // func

// Check if average height in teams is nearly equal
func checkAverageHeightEquality(team1: [Dictionary<String, String>], team2: [Dictionary<String, String>], team3: [Dictionary<String, String>], maxDifference: Double) -> Bool {
    
    var heightTeam1 = 0.0
    var averageHeightTeam1 = 0.0
    
    var heightTeam2 = 0.0
    var averageHeightTeam2 = 0.0
    
    var heightTeam3 = 0.0
    var averageHeightTeam3 = 0.0
    
    for player in team1{
        heightTeam1 += Double(player["heightInInches"]!)!
    }
    averageHeightTeam1 = heightTeam1 / Double(team1.count)
    
    for player in team2{
        heightTeam2 += Double(player["heightInInches"]!)!
    }
    averageHeightTeam2 = heightTeam2 / Double(team2.count)
    
    for player in team3{
        heightTeam3 += Double(player["heightInInches"]!)!
    }
    averageHeightTeam3 = heightTeam3 / Double(team3.count)
    
    if ( abs(averageHeightTeam1 - averageHeightTeam2) <= maxDifference &&
        abs(averageHeightTeam2 - averageHeightTeam3) <= maxDifference ) {
        return true
    } else{
        return false
    }
} // func

// Check whether in each team is the same amount of experienced players
func checkExperiencedPlayersEquality(team1: [Dictionary<String, String>], team2: [Dictionary<String, String>], team3: [Dictionary<String, String>]) -> Bool{
    
    var experiencedPlayersTeam1 = 0
    var experiencedPlayersTeam2 = 0
    var experiencedPlayersTeam3 = 0
    
    for player in team1{
        if player["playedSoccerBefore"] == "true"{
            experiencedPlayersTeam1 += 1
        }
    }
    for player in team2{
        if player["playedSoccerBefore"] == "true"{
            experiencedPlayersTeam2 += 1
        }
    }
    for player in team3{
        if player["playedSoccerBefore"] == "true"{
            experiencedPlayersTeam3 += 1
        }
    }
    
    if (experiencedPlayersTeam1 == experiencedPlayersTeam2 && experiencedPlayersTeam2 == experiencedPlayersTeam3){
        return true
    } else{
        return false
    }
} // func

// Swap players from one team to another team by random
func swapPlayers(team1: inout [Dictionary<String, String>], team2: inout [Dictionary<String, String>],  team3: inout [Dictionary<String, String>]){
    
    let randTeam1 = Int.random(in: 1...allTeams.count)
    var randTeam2 = Int.random(in: 1...allTeams.count)
    
    let randPlayer = Int.random(in: 0...team1.count-1)
    
    while randTeam1 == randTeam2{
        randTeam2 = Int.random(in: 1...allTeams.count)
    }
    
    switch randTeam1 {
    case 1:
        switch randTeam2 {
        case 2:
            let tempPlayer = team2[randPlayer]
            team2[randPlayer] = team1[randPlayer]
            team1[randPlayer] = tempPlayer
        case 3:
            let tempPlayer = team3[randPlayer]
            team3[randPlayer] = team1[randPlayer]
            team1[randPlayer] = tempPlayer
        default:
            break
        }
    case 2:
        switch randTeam2 {
        case 1:
            let tempPlayer = team1[randPlayer]
            team1[randPlayer] = team2[randPlayer]
            team2[randPlayer] = tempPlayer
        case 3:
            let tempPlayer = team3[randPlayer]
            team3[randPlayer] = team2[randPlayer]
            team2[randPlayer] = tempPlayer
        default:
            break
        }
    case 3:
        switch randTeam2 {
        case 1:
            let tempPlayer = team1[randPlayer]
            team1[randPlayer] = team3[randPlayer]
            team3[randPlayer] = tempPlayer
        case 2:
            let tempPlayer = team2[randPlayer]
            team2[randPlayer] = team3[randPlayer]
            team3[randPlayer] = tempPlayer
        default:
            break
            
        }
    default:
        break
    }
} // func

// Assign all players to the teams
assignPlayersToTeams(players: players, experiencedPlayers: experiencedPlayers)


let maxDifference = 1.5 // Max difference in height between the teams in inches

var breakout = 0
// Swap players until in each team is the same amunt of experienced players and the average height is equal or less the maximal difference (1.5 inches). If its impossible break after 100.000 iterations
while !checkAverageHeightEquality(team1: teamRaptors, team2: teamSharks, team3: teamDragons, maxDifference: maxDifference) || !checkExperiencedPlayersEquality(team1: teamRaptors, team2: teamSharks, team3: teamDragons) {
    swapPlayers(team1: &teamDragons, team2: &teamSharks, team3: &teamRaptors)
    if breakout == 100000 {
        break
    }
    breakout += 1
}


/*
 ####################################
 ############# Part 3 ###############
 ####################################
 */

/*
 Team practice dates/times:
 Dragons - March 17, 1pm
 Sharks - March 17, 3pm
 Raptors - March 18, 1pm
 */

let practiceDateTime = [
    ["team": "Dragons", "date": "March 17", "time": "1pm"],
    ["team": "Sharks", "date": "March 17", "time": "3pm"],
    ["team": "Raptors", "date": "March 18", "time": "1pm"]
]

let teamDragonsHash = teamDragons.hashValue
let teamSharksHash = teamSharks.hashValue
let teamRaptorsHash = teamRaptors.hashValue

// Put the now filled dictionaries in the array
allTeams.removeAll()
allTeams.append(teamDragons)
allTeams.append(teamSharks)
allTeams.append(teamRaptors)

var letters: [String] = []

// Write and print all the letters and fill the letters collection
func writeAndPrintLetters(allTeams: [[Dictionary<String, String>]]){
    //let allTeams = [team1, team2, team3]
    // Iterate through all teams
    for team in allTeams{
        // Check team
        if team.hashValue == teamDragonsHash{
            // Iteare through team
            for player in team{
                let tempLetter = "Dear \(player["guardiansNames"]!)!\n\n\(player["name"]!) has been placed in team \(practiceDateTime[0]["team"]!).\nTraining starts at \(practiceDateTime[0]["date"]!), \(practiceDateTime[0]["time"]!).\n\nYou are cordially invited to visit the training! We have free beer sponsored by Treehouse.\n\nYours sincerely \n\nJohn Doe"
                letters.append(tempLetter)
                //print(tempLetter)
            }
        } else if(team.hashValue == teamSharksHash){
            for player in team{
                let tempLetter = "Dear \(player["guardiansNames"]!)!\n\n\(player["name"]!) has been placed in team \(practiceDateTime[1]["team"]!).\nTraining starts at \(practiceDateTime[1]["date"]!), \(practiceDateTime[1]["time"]!).\n\nYou are cordially invited to visit the training! We have free beer sponsored by Treehouse.\n\nYours sincerely \n\nJohn Doe"
                letters.append(tempLetter)
                //print(tempLetter)
            }
        } else if(team.hashValue == teamRaptorsHash){
            for player in team{
                let tempLetter = "Dear \(player["guardiansNames"]!)!\n\n\(player["name"]!) has been placed in team \(practiceDateTime[2]["team"]!). Training starts at \(practiceDateTime[2]["date"]!), \(practiceDateTime[2]["time"]!).\n\nYou are cordially invited to visit the training! We have free beer sponsored by Treehouse.\n\nYours sincerely \n\nJohn Doe"
                letters.append(tempLetter)
                //print(tempLetter)
            }
        }
        print("")
    }
}

// Print the letters in console
func printLettersInConsole(){
    for letter in letters{
        print (letter)
        print ("\n\n\n")
    }
}

// Write the letters
writeAndPrintLetters(allTeams: allTeams)
printLettersInConsole()


