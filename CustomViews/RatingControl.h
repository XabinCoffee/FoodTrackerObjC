//
//  RatingControl.h
//  FoodTrackerObjC
//
//  Created by Xabin Rodriguez on 15/3/18.
//  Copyright © 2018 Xabin Rodriguez. All rights reserved.
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE
@interface RatingControl : UIStackView

@property (nonatomic) int rating;
@property (nonatomic) IBInspectable double starSize;
@property (nonatomic) IBInspectable int starCount;
@property (nonatomic) BOOL createdFromIB;

-(id)initWithFrame:(CGRect)frame;
-(id)initWithCoder:(NSCoder*)coder;
-(void)setupButtons;

@end
