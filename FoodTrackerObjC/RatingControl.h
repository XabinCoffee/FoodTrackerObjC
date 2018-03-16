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

@property int rating;
@property IBInspectable double starSize;
@property IBInspectable int starCount;

-(id)initWithFrame:(CGRect)frame;
-(id)initWithCoder:(NSCoder*)coder;
-(void)setupButtons;

@end
