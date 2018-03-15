//
//  RatingControl.h
//  FoodTrackerObjC
//
//  Created by Xabin Rodriguez on 15/3/18.
//  Copyright © 2018 Xabin Rodriguez. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RatingControl : UIStackView

@property (weak, nonatomic) NSNumber *rating;
@property (weak, nonatomic) NSNumber *starSize;
@property (weak, nonatomic) NSNumber *starCount;

-(void)setupButtons;

@end
