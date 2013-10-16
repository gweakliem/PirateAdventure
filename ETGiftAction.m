//
//  ETGiftAction.m
//  Pirate Adventure
//
//  Created by Gordon Weakliem on 10/14/13.
//  Copyright (c) 2013 Eighty Twenty. All rights reserved.
//

#import "ETGiftAction.h"

@implementation ETGiftAction
-(ETGiftAction *) initWithArmor: (ETArmor*) armor andAction:(NSString *)action {
    self.canAvoid = true;
    self.armor = armor;
    self.text = action;
    return self;
}
-(ETGiftAction *) initWithWeapon: (ETWeapon*) weapon andAction:(NSString *)action{
    self.canAvoid = true;
    self.weapon = weapon;
    self.text = action;
    return self;
}

// don't quite like this one. canAvoid should be a parameter but I'm lazy and the places I'm using this
// are all ok being unavoidable
-(ETGiftAction *) initWithHealthChange: (int) healthChange andAction:(NSString *)action {
    self.canAvoid = false;
    self.healthChange = healthChange;
    self.text = action;
    return self;
}

-(Boolean) takeActionOn: (ETCharacter *)character {
    character.health += self.healthChange;
    if (self.weapon != nil) {
        character.weapon = self.weapon;
    }
    if (self.armor != nil) {
        character.armor = self.armor;
    }
    return true;
}
@end
