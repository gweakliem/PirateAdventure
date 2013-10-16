//
//  ETFightAction.h
//  Pirate Adventure
//
//  Created by Gordon Weakliem on 10/14/13.
//  Copyright (c) 2013 Eighty Twenty. All rights reserved.
//

#import "ETAction.h"

@interface ETFightAction : ETAction
@property (strong, nonatomic) ETCharacter *opposingCharacter;
-(ETFightAction*) initWithCharacter: (ETCharacter*) character andAction: (NSString*) action;
-(Boolean) takeActionOn: (ETCharacter *)character;
@end
