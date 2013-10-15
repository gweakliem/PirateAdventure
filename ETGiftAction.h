//
//  ETGiftAction.h
//  Pirate Adventure
//
//  Created by Gordon Weakliem on 10/14/13.
//  Copyright (c) 2013 Eighty Twenty. All rights reserved.
//

#import "ETAction.h"
#import "ETArmor.h"
#import "ETWeapon.h"

@interface ETGiftAction : ETAction
-(ETGiftAction *) initWithArmor: (ETArmor*) armor andAction: (NSString*) action;
-(ETGiftAction *) initWithWeapon: (ETWeapon*) weapon andAction: (NSString*) action;
-(ETGiftAction *) initWithHealthChange: (int) healthChange andAction: (NSString*) action;

@property (strong, nonatomic) ETArmor *armor;
@property (strong, nonatomic) ETWeapon *weapon;
@property int healthChange;
-(void) takeActionOn: (ETCharacter *)character;
@end
