//
//  PlayerManager.h
//  Snakes & Ladders
//
//  Created by Thiago Hissa on 2017-07-01.
//  Copyright © 2017 Thiago Hissa. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Player.h"

@interface PlayerManager : NSObject
@property (nonatomic) NSMutableArray *players;
@property (nonatomic) NSInteger currentIndex;
-(void)createPlayer: (int)numberOfPlayers;
-(void)roll;
-(Player*)currentPlayer;
@end
