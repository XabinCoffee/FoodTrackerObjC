//
//  RatingControl.m
//  FoodTrackerObjC
//
//  Created by Xabin Rodriguez on 15/3/18.
//  Copyright © 2018 Xabin Rodriguez. All rights reserved.
//

#import "RatingControl.h"


@implementation RatingControl{
    
    NSMutableArray *ratingButtons;
}



#pragma mark Initializers

- (id)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    ratingButtons = [[NSMutableArray alloc] init];
    [self setupButtons];
    return self;
}

- (id)initWithCoder:(NSCoder *)coder{
    self = [super initWithCoder:coder];
    ratingButtons = [[NSMutableArray alloc] init];
    [self setupButtons];
    return self;
}


#pragma mark Private methods
-(void)setupButtons{
    
    for (int i = 0; i<[ratingButtons count]; i++){
        [self removeArrangedSubview:[ratingButtons objectAtIndex:i]];
        [[ratingButtons objectAtIndex:i] removeFromSuperview];
    }
    [ratingButtons removeAllObjects];
    
    UIImage *emptyStar = [UIImage imageNamed:@"emptyStar"];
    UIImage *filledStar = [UIImage imageNamed:@"filledStar"];
    UIImage *highlightedStar = [UIImage imageNamed:@"highlightedStar"];
    
    for (int i = 0; i < 5; i++){
        UIButton *button = [[UIButton alloc] init];
        [button setImage:emptyStar forState:UIControlStateNormal];
        [button setImage:filledStar forState:UIControlStateSelected];
        [button setImage:highlightedStar forState:UIControlStateHighlighted];
        button.translatesAutoresizingMaskIntoConstraints=NO;
        [button.heightAnchor constraintEqualToConstant:33].active=YES;
        [button.widthAnchor constraintEqualToConstant:33].active=YES;
        [self addArrangedSubview:button];
        [ratingButtons addObject:button];
    }

}

@end
