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
    self.armor = armor;
    self.text = action;
    return self;
}
-(ETGiftAction *) initWithWeapon: (ETWeapon*) weapon andAction:(NSString *)action{
    self.weapon = weapon;
    self.text = action;
    return self;
}
-(ETGiftAction *) initWithHealthChange: (int) healthChange andAction:(NSString *)action {
    self.healthChange = healthChange;
    self.text = action;
    return self;
}

-(void) takeActionOn: (ETCharacter *)character {
    character.health += self.healthChange;
    character.weapon = self.weapon;
    character.armor = self.armor;
}
@end
