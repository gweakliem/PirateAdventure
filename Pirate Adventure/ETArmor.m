//
//  ETArmor.m
//  Pirate Adventure
//
//  Created by Gordon Weakliem on 10/13/13.
//  Copyright (c) 2013 Eighty Twenty. All rights reserved.
//

#import "ETArmor.h"

@implementation ETArmor
-(ETArmor*) initWithName: (NSString*) name andHealthBonus: (int) healthBonus {
    self.name = name;
    self.healthBonus = healthBonus;
    return self;
}
@end
