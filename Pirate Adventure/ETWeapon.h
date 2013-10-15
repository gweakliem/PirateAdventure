//
//  ETWeapon.h
//  Pirate Adventure
//
//  Created by Gordon Weakliem on 10/13/13.
//  Copyright (c) 2013 Eighty Twenty. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ETWeapon : NSObject
-(ETWeapon*) initWithName: (NSString*) name andDamageBonus: (int) damageBonus;
@property (strong, nonatomic) NSString *name;
@property int damageBonus;
@end
