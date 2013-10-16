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
    self.character = [[ETCharacter alloc] initWithHealth:50 andDamage:5];
    self.currentPosition = CGPointMake(0,0);

    [self updateUIToMatchGameState];
}

// Set the navigation buttons based on the coordinates
// could be refactored into a gameboard class, with canMoveNorth, canMoveSouth, etc properties calculated on current
// position and size of board.
-(void) updateLegalMoves {
    self.moveNorthButton.enabled = self.currentPosition.y < MAX_Y - 1;
    self.moveEastButton.enabled = self.currentPosition.x < MAX_X - 1;
    self.moveSouthButton.enabled = self.currentPosition.y > 0;
    self.moveWestButton.enabled = self.currentPosition.x > 0;

}

// set up the user interface to what's appropriate for the current state of the game.
-(void) updateUIToMatchGameState {
    // if the character's dead, disable the UI except for "new game"
    if (self.character.health <= 0) {
        self.storyDisplay.text = @"You died, game over!";
        self.actionButton.enabled = false;
        self.moveEastButton.enabled = self.moveNorthButton.enabled = self.moveSouthButton.enabled = self.moveWestButton.enabled = false;
        self.healthStatusLabel.text = @"Dead!";
    } else {
        ETTile *currentTile = [[self.gameBoard objectAtIndex:self.currentPosition.x] objectAtIndex:self.currentPosition.y];
        [self updateLegalMoves];
        self.storyDisplay.text = currentTile.story;
        if (currentTile.action == nil) {
            [self.actionButton setTitle:@"..." forState:UIControlStateNormal];
            self.actionButton.enabled = false;
        } else {
            [self.actionButton setTitle:currentTile.action.text forState:UIControlStateNormal];
            self.actionButton.enabled = true;
        }
        self.currentSceneImage.image = currentTile.background;
    
        // set up status area
        self.weaponStatusLabel.text = self.character.weapon.name;
        self.healthStatusLabel.text = [NSString stringWithFormat:@"%d", [self.character getHealth]];
        self.armorStatusLabel.text = self.character.armor.name;
        self.damageStatusLabel.text = [NSString stringWithFormat:@"%d", [self.character getDamage]];
    }
}

- (IBAction)onGoNorth:(UIButton *)sender {
    self.currentPosition = CGPointMake(self.currentPosition.x, self.currentPosition.y+1);
    [self updateUIToMatchGameState];
}

- (IBAction)onGoEast:(UIButton *)sender {
    self.currentPosition = CGPointMake(self.currentPosition.x + 1, self.currentPosition.y);
    [self updateUIToMatchGameState];
}

- (IBAction)onGoSouth:(UIButton *)sender {
    self.currentPosition = CGPointMake(self.currentPosition.x, self.currentPosition.y-1);
    [self updateUIToMatchGameState];
}

- (IBAction)onGoWest:(UIButton *)sender {
    self.currentPosition = CGPointMake(self.currentPosition.x-1, self.currentPosition.y);
    [self updateUIToMatchGameState];
}

- (IBAction)onTakeActionButton:(UIButton *)sender {
    ETTile *currentTile = [[self.gameBoard objectAtIndex:self.currentPosition.x] objectAtIndex:self.currentPosition.y];
    if (currentTile.action != nil) {
        if ([currentTile.action takeActionOn:self.character]) {
            // action complete, so clear the action for this tile.
            currentTile.action = nil;
        }
    }
    [self updateUIToMatchGameState];
}
@end
