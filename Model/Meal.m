//
//  Meal.m
//  FoodTrackerObjC
//
//  Created by Xabin Rodriguez on 19/3/18.
//  Copyright © 2018 Xabin Rodriguez. All rights reserved.
//

#import "Meal.h"

@implementation Meal

-(void)setParams:(NSString*)name andPhoto:(UIImage*)photo andRating:(NSInteger)rating{
    _name = name;
    _photo = photo;
    _rating = rating;
}



@end
