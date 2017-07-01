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
    }
    return self;
}

-(void)roll{
    NSInteger random = arc4random_uniform(6)+1;
    self.currentSquare = self.currentSquare + random;
    NSLog(@"Dice value: %d", (int)random);
    NSLog(@"You are on the square: %d", (int)self.currentSquare);
}

@end
