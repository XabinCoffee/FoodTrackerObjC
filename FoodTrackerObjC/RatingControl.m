//
//  RatingControl.m
//  FoodTrackerObjC
//
//  Created by Xabin Rodriguez on 15/3/18.
//  Copyright © 2018 Xabin Rodriguez. All rights reserved.
//

#import "RatingControl.h"

@implementation RatingControl

- (id)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    [self setupButtons];
    return self;
}

- (id)initWithCoder:(NSCoder *)coder{
    self = [super initWithCoder:coder];
    [self setupButtons];
    return self;
}


-(void)setupButtons{
    
    UIButton *button = [[UIButton alloc] init];
    button.backgroundColor = UIColor.redColor;
    //UIImage *emptyStar = [UIImage imageNamed:@"emptyStar"];
    //[button setImage:emptyStar forState:normal];
    button.translatesAutoresizingMaskIntoConstraints=NO;
    [button.heightAnchor constraintEqualToConstant:44.0].active=YES;
    [button.widthAnchor constraintEqualToConstant:44.0].active=YES;
    [self addArrangedSubview:button];    
    
}

@end
