//
//  ViewController.h
//  FoodTrackerObjC
//
//  Created by Xabin Rodriguez on 15/3/18.
//  Copyright © 2018 Xabin Rodriguez. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate>

@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UIImageView *photoImageView;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *saveButton;

@end

