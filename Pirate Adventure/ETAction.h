//
//  ETAction.h
//  Pirate Adventure
//
//  Created by Gordon Weakliem on 10/14/13.
//  Copyright (c) 2013 Eighty Twenty. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ETCharacter.h" 

@interface ETAction : NSObject
@property (strong, nonatomic) NSString *text;
@property bool canAvoid;
// what does the action do? It can be a fight with a character,
// or an event that does something to your character (increase/decrease
// health, add an item to inventory).
// Return true when the action is complete - i.e. the event has occurred,
// the fight is over, etc.
-(Boolean) takeActionOn: (ETCharacter *)character;
@end
