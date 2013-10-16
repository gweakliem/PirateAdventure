//
//  ETFightAction.m
//  Pirate Adventure
//
//  Created by Gordon Weakliem on 10/14/13.
//  Copyright (c) 2013 Eighty Twenty. All rights reserved.
//

#import "ETFightAction.h"

@implementation ETFightAction
-(ETFightAction*) initWithCharacter: (ETCharacter*) character andAction: (NSString*) action {
    self.canAvoid = false;
    self.opposingCharacter = character;
    self.text = action;
    return self;
}
-(Boolean) takeActionOn: (ETCharacter *)character {
    self.opposingCharacter.health -= character.damage;
    character.health -= self.opposingCharacter.damage;
    character.health += character.armor.healthBonus;
    // fight is over when one side is dead.
    return character.health <= 0 || self.opposingCharacter.health <= 0;
}
@end
