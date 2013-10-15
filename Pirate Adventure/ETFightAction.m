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
    self.opposingCharacter = character;
    self.text = action;
    return self;
}
-(void) takeActionOn: (ETCharacter *)character {
    self.opposingCharacter.health -= character.damage;
    character.health -= (self.opposingCharacter.damage - character.armor.healthBonus);
}
@end
