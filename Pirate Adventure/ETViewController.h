//
//  ETViewController.h
//  Pirate Adventure
//
//  Created by Gordon Weakliem on 10/11/13.
//  Copyright (c) 2013 Eighty Twenty. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ETCharacter.h"

@interface ETViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIView *gameDisplay;
@property (strong, nonatomic) IBOutlet UIView *actionDisplay;
@property (strong, nonatomic) IBOutlet UIView *gameStatus;
@property (strong, nonatomic) IBOutlet UILabel *storyDisplay;
@property (strong, nonatomic) IBOutlet UIButton *actionButton;
@property (strong, nonatomic) IBOutlet UIImageView *currentSceneImage;

// status labels
@property (strong, nonatomic) IBOutlet UILabel *healthStatusLabel;
@property (strong, nonatomic) IBOutlet UILabel *damageStatusLabel;
@property (strong, nonatomic) IBOutlet UILabel *weaponStatusLabel;
@property (strong, nonatomic) IBOutlet UILabel *armorStatusLabel;

// navigation buttons
@property (strong, nonatomic) IBOutlet UIButton *moveNorthButton;
@property (strong, nonatomic) IBOutlet UIButton *moveEastButton;
@property (strong, nonatomic) IBOutlet UIButton *moveSouthButton;
@property (strong, nonatomic) IBOutlet UIButton *moveWestButton;
- (IBAction)onTakeActionButton:(UIButton *)sender;

- (IBAction)onNewGame:(UIButton *)sender;
- (IBAction)onGoNorth:(UIButton *)sender;
- (IBAction)onGoEast:(UIButton *)sender;
- (IBAction)onGoSouth:(UIButton*)sender;
- (IBAction)onGoWest:(UIButton *)sender;

@end
