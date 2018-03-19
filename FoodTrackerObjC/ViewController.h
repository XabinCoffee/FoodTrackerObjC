//
//  ViewController.h
//  FoodTrackerObjC
//
//  Created by Xabin Rodriguez on 15/3/18.
//  Copyright © 2018 Xabin Rodriguez. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Meal.h"
#import "RatingControl.h"

@interface ViewController : UIViewController <UITextFieldDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate>

@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UIImageView *photoImageView;
@property (weak, nonatomic) IBOutlet RatingControl *ratingControl;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *saveButton;

@property Meal *meal;

- (IBAction)cancel:(UIBarButtonItem *)sender;


@end

