//
//  RatingControl.m
//  FoodTrackerObjC
//
//  Created by Xabin Rodriguez on 15/3/18.
//  Copyright © 2018 Xabin Rodriguez. All rights reserved.
//

#import "RatingControl.h"
#import "RatingButton.h"


@implementation RatingControl{
    
    NSMutableArray *ratingButtons;
}



#pragma mark Initializers

- (id)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    ratingButtons = [[NSMutableArray alloc] init];
    return self;
}

- (id)initWithCoder:(NSCoder *)coder{
    self = [super initWithCoder:coder];
    ratingButtons = [[NSMutableArray alloc] init];
    return self;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    [self setupButtons];
    NSLog(@"%d", self.starCount);
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
    
    for (int i = 0; i < _starCount; i++){
        RatingButton *button = [[RatingButton alloc] init];
        button.value = i+1;
        [button setImage:emptyStar forState:UIControlStateNormal];
        [button setImage:filledStar forState:UIControlStateSelected];
        [button setImage:highlightedStar forState:UIControlStateHighlighted];
        button.translatesAutoresizingMaskIntoConstraints=NO;
        [button.heightAnchor constraintEqualToConstant:_starSize].active=YES;
        [button.widthAnchor constraintEqualToConstant:_starSize].active=YES;
        
        [button addTarget:self action:@selector(ratingButtonTapped:) forControlEvents:UIControlEventTouchUpInside];
        
        [self addArrangedSubview:button];
        [ratingButtons addObject:button];
    }

}


#pragma mark Button Action

-(void) ratingButtonTapped:(RatingButton*)button{
    NSInteger index = button.value;
    if (_rating == index){
        _rating = 0;
    } else {
        _rating = index;
    }
    [self updateButtonSelectionStates];
}

-(void) updateButtonSelectionStates{
    for (RatingButton *button in ratingButtons){
        if (_rating >= button.value){
            [button setSelected:YES];
        } else {
            [button setSelected:FALSE];
        }
    }
}



@end
