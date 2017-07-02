//
//  PlayerManager.m
//  Snakes & Ladders
//
//  Created by Thiago Hissa on 2017-07-01.
//  Copyright © 2017 Thiago Hissa. All rights reserved.
//

#import "PlayerManager.h"
#import "Player.h"

@implementation PlayerManager
- (instancetype)init
{
    self = [super init];
    if (self) {
        _players = [NSMutableArray array];
        _currentIndex = 0;
    }
    return self;
}

-(void)createPlayer: (int)numberOfPlayers{
    for(int i = 0; i<= numberOfPlayers-1; i++){
        Player *player = [[Player alloc] init];
        player.name = [@"Player " stringByAppendingFormat:@"%d",i+1];
        [self.players addObject:player];
    }
}

-(void)roll{
    [self.players[self.currentIndex] roll];
    self.currentIndex = self.currentIndex + 1;
    if(self.currentIndex >= self.players.count){
        self.currentIndex = 0;
    }
}

-(Player*)currentPlayer{
    
    
    
    return nil;
}

@end
