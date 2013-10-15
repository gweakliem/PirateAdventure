//
//  ETCharacter.h
//  Pirate Adventure
//
//  Created by Gordon Weakliem on 10/13/13.
//  Copyright (c) 2013 Eighty Twenty. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ETWeapon.h"
#import "ETArmor.h"

@interface ETCharacter : NSObject
-(ETCharacter *) initWithHealth: (int) health andDamage: (int) damage;
@property int health;
@property int damage;
@property (strong, nonatomic) ETWeapon *weapon;
@property (strong, nonatomic) ETArmor *armor;
@end
