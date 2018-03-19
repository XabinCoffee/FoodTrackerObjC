//
//  Meal.h
//  FoodTrackerObjC
//
//  Created by Xabin Rodriguez on 19/3/18.
//  Copyright © 2018 Xabin Rodriguez. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface Meal : NSObject

@property (weak, nonatomic) NSString *name;
@property (weak, nonatomic) UIImage *photo;
@property (nonatomic) NSInteger rating;

-(void)setParams:(NSString*)name andPhoto:(UIImage*)photo andRating:(NSInteger)rating;

@end
