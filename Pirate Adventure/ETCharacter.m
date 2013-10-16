//
//  ETCharacter.m
//  Pirate Adventure
//
//  Created by Gordon Weakliem on 10/13/13.
//  Copyright (c) 2013 Eighty Twenty. All rights reserved.
//

#import "ETCharacter.h"

@implementation ETCharacter {
    int _damage;
    int _health;
}
-(ETCharacter *) initWithHealth: (int) health andDamage: (int) damage {
    self.health = health;
    self.damage = damage;
    self.armor = [[ETArmor alloc] initWithName:@"Leather Coat" andHealthBonus:0];
    self.weapon = [[ETWeapon alloc] initWithName:@"Bare hands" andDamageBonus:0];
    return self;
}
-(int) getHealth {
    return self.health + self.armor.healthBonus;
}
-(int) getDamage {
    return self.weapon.damageBonus;
}
@end
