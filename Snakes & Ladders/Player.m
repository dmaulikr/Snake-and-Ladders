//
//  Player.m
//  Snakes & Ladders
//
//  Created by Thiago Hissa on 2017-07-01.
//  Copyright © 2017 Thiago Hissa. All rights reserved.
//

#import "Player.h"

@implementation Player

- (instancetype)init
{
    self = [super init];
    if (self) {
        _currentSquare = 0;
        _gameLogic = [[NSDictionary alloc] initWithObjectsAndKeys:
                      
                      // Ladders
                      @14 ?: [NSNull null], @4,
                      @31 ?: [NSNull null], @9,
                      @38 ?: [NSNull null], @20,
                      @84 ?: [NSNull null], @28,
                      @59 ?: [NSNull null], @40,
                      @67 ?: [NSNull null], @51,
                      @81 ?: [NSNull null], @63,
                      
                      // Snakes
                      @7 ?: [NSNull null], @17,
                      @60 ?: [NSNull null], @64,
                      @26 ?: [NSNull null], @89,
                      @75 ?: [NSNull null], @95,
                      @78 ?: [NSNull null], @99, nil
                      ];

    }
    return self;
}

-(void)roll{
    NSInteger random = arc4random_uniform(6)+1;
    self.currentSquare = self.currentSquare + random;
    NSLog(@"Dice value: %d", (int)random);
    NSLog(@"You are on the square: %d", (int)self.currentSquare);
    NSLog(@"Dictionary %@", self.gameLogic[@64]);
}

@end
