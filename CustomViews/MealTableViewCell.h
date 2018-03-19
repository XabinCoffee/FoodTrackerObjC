//
//  MealTableViewCell.h
//  FoodTrackerObjC
//
//  Created by Xabin Rodriguez on 19/3/18.
//  Copyright © 2018 Xabin Rodriguez. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RatingControl.h"

@interface MealTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *photoImageView;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet RatingControl *ratingControl;

@end
