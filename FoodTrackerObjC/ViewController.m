//
//  ViewController.m
//  FoodTrackerObjC
//
//  Created by Xabin Rodriguez on 15/3/18.
//  Copyright © 2018 Xabin Rodriguez. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _nameTextField.delegate = self;
    
    if (_meal != nil){
        _photoImageView.image = _meal.photo;
        _nameTextField.text = _meal.name;
        _ratingControl.rating = _meal.rating;
        [_ratingControl updateButtonSelectionStates];
    }
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark UITextFieldDelegate

-(BOOL) textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return true;
}

-(void) textFieldDidEndEditing:(UITextField *)textField{
    self.navigationItem.title = textField.text;
    [_saveButton setEnabled:YES];
}

-(void) textFieldDidBeginEditing:(UITextField *)textField{
    [_saveButton setEnabled:NO];
}


#pragma mark UIImagePickerControllerDelegate

-(void) imagePickerControllerDidCancel:(UIImagePickerController *)picker{
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void) imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info{
    UIImage *selectedImage = info[UIImagePickerControllerOriginalImage];
    _photoImageView.image = selectedImage;
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

#pragma mark Navigation


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    [super prepareForSegue:segue sender:sender];
    
    if (sender == _saveButton){
        Meal *mael = [[Meal alloc] init]; //Oops.
        [mael setParams:_nameTextField.text andPhoto:_photoImageView.image andRating:_ratingControl.rating];
        _meal = mael;
    }
    
}


#pragma mark Actions

- (IBAction)selectImageFromPhotoLibrary:(UITapGestureRecognizer*)sender {
    [_nameTextField resignFirstResponder];
    UIImagePickerController *imagePickerController = [[UIImagePickerController alloc] init];
    imagePickerController.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    imagePickerController.delegate = self;
    [self presentViewController:imagePickerController animated:YES completion:nil];
}


- (IBAction)cancel:(UIBarButtonItem *)sender {
    
    if (_meal != nil){ //If meal isn't nil, you're editing
        [[self navigationController] popViewControllerAnimated:YES];
    } else {
        
    [self dismissViewControllerAnimated:YES completion:nil];
    }
}
@end
