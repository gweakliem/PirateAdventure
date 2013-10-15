//
//  ETTile.h
//  Pirate Adventure
//
//  Created by Gordon Weakliem on 10/13/13.
//  Copyright (c) 2013 Eighty Twenty. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "ETCharacter.h"
#import "ETAction.h"

@interface ETTile : NSObject
@property (strong, nonatomic) NSString *story;
@property (strong, nonatomic) UIImage *background;
@property (strong, nonatomic) ETAction *action;

-(ETTile*) initWithStory: (NSString *)story background: (UIImage*) background action: (ETAction*) action;

//-(void) interactWith: (ETCharacter *) character;
@end
