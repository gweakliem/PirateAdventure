//
//  ETGameBoard.m
//  Pirate Adventure
//
//  Created by Gordon Weakliem on 10/15/13.
//  Copyright (c) 2013 Eighty Twenty. All rights reserved.
//

#import "ETGameBoard.h"
#import "ETGiftAction.h"
#import "ETFightAction.h"

@implementation ETGameBoard {
    NSArray* gameTiles;
}

-(ETGameBoard *) initGameBoardWithDimensions: (CGPoint) extent {
    self.extent = extent;
    NSArray *row1 = [[NSArray alloc] initWithObjects:
                     [[ETTile alloc] initWithStory: @"You have been chosen to lead our crew to defeat the pirate boss" background:[UIImage imageNamed:@"PirateStart.jpg"] action:nil],
                     [[ETTile alloc] initWithStory: @"You find a cache of pistols" background:[UIImage imageNamed:@"PirateWeapons.jpeg"]
                                            action:[[ETGiftAction alloc] initWithWeapon:
                                                    [[ETWeapon alloc] initWithName:@"Pistols" andDamageBonus:50] andAction: @"Take the pistols"]],
                     [[ETTile alloc] initWithStory: @"You have been attacked by an octopus" background:[UIImage imageNamed:@"PirateOctopusAttack.jpg"]
                                            action:[[ETFightAction alloc] initWithCharacter: [[ETCharacter alloc] initWithHealth: 20 andDamage: 10] andAction:@"Attack the octopus"]],
                     [[ETTile alloc] initWithStory: @"You have been captured and forced to walk the plank" background:[UIImage  imageNamed:@"PiratePlank.jpg"]
                                            action:[[ETGiftAction alloc] initWithHealthChange:-10 andAction: @"Walk the plank"]],
                     nil];
    NSArray *row2 =[[NSArray alloc] initWithObjects:
                    [[ETTile alloc] initWithStory:@"You find a parrot" background:[UIImage imageNamed:@"PirateParrot.jpg"]
                                           action:[[ETGiftAction alloc] initWithArmor: [[ETArmor alloc] initWithName:@"Parrot" andHealthBonus:2] andAction: @"Take the parrot"]],
                    [[ETTile alloc] initWithStory:@"You find a hoard of pirate treasure" background:[UIImage imageNamed:@"PirateTreasure.jpeg"]
                                           action:[[ETGiftAction alloc] initWithHealthChange: 1 andAction:@"Take the treasure"]],
                    [[ETTile alloc] initWithStory:@"You find a hoard of pirate treasure" background:[UIImage imageNamed:@"PirateTreasurer2.jpeg"] action:[[ETGiftAction alloc] initWithHealthChange: 2 andAction:@"Take the treasure"]],
                    [[ETTile alloc] initWithStory:@"You are attacked by pirates" background:[UIImage imageNamed:@"PirateAttack.jpg"] action:[[ETFightAction alloc] initWithCharacter:[[ETCharacter alloc] initWithHealth:20 andDamage:20] andAction: @"Fight the pirates"]],
                    nil];
    NSArray *row3 = [[NSArray alloc] initWithObjects:
                     [[ETTile alloc] initWithStory:@"" background:[UIImage imageNamed:@"PirateFriendlyDock.jpg"]
                                            action:[[ETGiftAction alloc] initWithHealthChange:30 andAction: @"Walk the plank"]],
                     [[ETTile alloc] initWithStory:@"Your ship is attacked" background:[UIImage imageNamed:@"PirateShipBattle.jpeg"] action:[[ETFightAction alloc] initWithCharacter:[[ETCharacter alloc] initWithHealth:80 andDamage:25] andAction: @"Fight the pirates"]],
                     [[ETTile alloc] initWithStory:@"A friendly blacksmith gives you a new sword" background:[UIImage imageNamed:@"PirateBlacksmith.jpeg"] action:[[ETGiftAction alloc] initWithWeapon:[[ETWeapon alloc] initWithName:@"Sword" andDamageBonus:20] andAction:@"Take the sword"]],
                     [[ETTile alloc] initWithStory:@"Your final fight with the Pirate Boss has come!" background:[UIImage imageNamed:@"PirateBoss.jpeg"] action:[[ETFightAction alloc] initWithCharacter:[[ETCharacter alloc] initWithHealth:150 andDamage:60] andAction:@"Fight the boss"]],
                     nil];
    gameTiles = [[NSArray alloc] initWithObjects:row1,row2,row3, nil];
    return self;
}

-(ETTile*) tileAt: (CGPoint) coordinates {
    
}
@end
