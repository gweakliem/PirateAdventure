//
//  ETCharacter.m
//  Pirate Adventure
//
//  Created by Gordon Weakliem on 10/13/13.
//  Copyright (c) 2013 Eighty Twenty. All rights reserved.
//

#import "ETCharacter.h"

@implementation ETCharacter
-(ETCharacter *) initWithHealth: (int) health andDamage: (int) damage {
    self.health = health;
    self.damage = damage;
    return self;
}
-(ETCharacter *) init {
    self.health = 10;
    self.damage = 0;
    return self;
}
@end
