//
//  ETViewController.m
//  Pirate Adventure
//
//  Created by Gordon Weakliem on 10/11/13.
//  Copyright (c) 2013 Eighty Twenty. All rights reserved.
//

#import "ETViewController.h"
#import "ETGameFactory.h"
#import "ETTile.h"

@interface ETViewController ()

@end

@implementation ETViewController

const int MAX_X = 3;
const int MAX_Y = 4;

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    [self onNewGame:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onNewGame:(UIButton *)sender {
    ETGameFactory *gameFactory = [[ETGameFactory alloc]init];
    self.gameBoard = [gameFactory createGameBoard];
    self.character = [[ETCharacter alloc] init];
    self.currentPosition = CGPointMake(0,0);

    [self updateUIToMatchTile];
}

// could be refactored into a gameboard class, with canMoveNorth, canMoveSouth, etc properties calculated on current
// position and size of board.
-(void) updateLegalMoves {
    self.moveNorthButton.enabled = self.currentPosition.y < MAX_Y - 1;
    self.moveEastButton.enabled = self.currentPosition.x < MAX_X - 1;
    self.moveSouthButton.enabled = self.currentPosition.y > 0;
    self.moveWestButton.enabled = self.currentPosition.x > 0;
}

-(void) updateUIToMatchTile {
    [self updateLegalMoves];
    ETTile *currentTile = [[self.gameBoard objectAtIndex:self.currentPosition.x] objectAtIndex:self.currentPosition.y];
    self.storyDisplay.text = currentTile.story;
    if (currentTile.action == nil) {
        self.actionButton.titleLabel.text = @"...";
        self.actionButton.enabled = false;
    } else {
        self.actionButton.titleLabel.text = currentTile.action.text;
        self.actionButton.enabled = true;
    }
    self.currentSceneImage.image = currentTile.background;
}

- (IBAction)onGoNorth:(UIButton *)sender {
    self.currentPosition = CGPointMake(self.currentPosition.x, self.currentPosition.y+1);
    [self updateUIToMatchTile];
}

- (IBAction)onGoEast:(UIButton *)sender {
    self.currentPosition = CGPointMake(self.currentPosition.x + 1, self.currentPosition.y);
    [self updateUIToMatchTile];
}

- (IBAction)onGoSouth:(UIButton *)sender {
    self.currentPosition = CGPointMake(self.currentPosition.x, self.currentPosition.y-1);
    [self updateUIToMatchTile];
}

- (IBAction)onGoWest:(UIButton *)sender {
    self.currentPosition = CGPointMake(self.currentPosition.x-1, self.currentPosition.y);
    [self updateUIToMatchTile];
}

- (IBAction)onTakeActionButton:(UIButton *)sender {
    ETTile *currentTile = [[self.gameBoard objectAtIndex:self.currentPosition.x] objectAtIndex:self.currentPosition.y];
    if (currentTile.action != nil) {
        [currentTile.action takeActionOn:self.character];
    }
}
@end
