//
//  ETWeapon.m
//  Pirate Adventure
//
//  Created by Gordon Weakliem on 10/13/13.
//  Copyright (c) 2013 Eighty Twenty. All rights reserved.
//

#import "ETWeapon.h"

@implementation ETWeapon
-(ETWeapon*) initWithName: (NSString*) name andDamageBonus: (int) damageBonus {
    self.name = name;
    self.damageBonus = damageBonus;
    return self;
}
@end
