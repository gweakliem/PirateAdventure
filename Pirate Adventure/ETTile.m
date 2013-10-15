//
//  ETTile.m
//  Pirate Adventure
//
//  Created by Gordon Weakliem on 10/13/13.
//  Copyright (c) 2013 Eighty Twenty. All rights reserved.
//

#import "ETTile.h"

@implementation ETTile
-(ETTile*) initWithStory:(NSString *)story background:(UIImage *)background action:(ETAction*) action {
    self.story = story;
    self.background = background;
    self.action = action;
    return self;
}
@end
