//
//  ETArmor.h
//  Pirate Adventure
//
//  Created by Gordon Weakliem on 10/13/13.
//  Copyright (c) 2013 Eighty Twenty. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ETArmor : NSObject
-(ETArmor*) initWithName: (NSString*) name andHealthBonus: (int) healthBonus;
@property (strong, nonatomic) NSString *name;
@property int healthBonus;
@end
