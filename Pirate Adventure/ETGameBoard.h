//
//  ETGameBoard.h
//  Pirate Adventure
//
//  Created by Gordon Weakliem on 10/15/13.
//  Copyright (c) 2013 Eighty Twenty. All rights reserved.
//

#import "ETAction.h"
#import "ETTile.h"

@interface ETGameBoard : ETAction

@property CGPoint extent;
-(ETGameBoard *) initGameBoardWithDimensions: (CGPoint) extent;

-(ETTile*) tileAt: (CGPoint) coordinates;
@end
