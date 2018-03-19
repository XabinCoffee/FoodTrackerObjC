//
//  MealTableViewController.m
//  FoodTrackerObjC
//
//  Created by Xabin Rodriguez on 19/3/18.
//  Copyright © 2018 Xabin Rodriguez. All rights reserved.
//

#import "MealTableViewController.h"
#import "Meal.h"
#import "MealTableViewCell.h"
#import "ViewController.h"

@interface MealTableViewController (){
    
    NSMutableArray *meals;
    
}

@end

@implementation MealTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    meals = [[NSMutableArray alloc] init];
    [self loadMeals];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return [meals count];
}

-(void) loadMeals{
    Meal* meal1 = [[Meal alloc] init];
    UIImage *photo2 = [UIImage imageNamed:@"meal2"];
    [meal1 setParams:@"Meal" andPhoto:photo2 andRating:3];
    [meals addObject:meal1];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSString *cellIdentifier = @"MealTableViewCell";
    MealTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    
    Meal *meal = [meals objectAtIndex:indexPath.row];
    cell.nameLabel.text = meal.name;
    cell.photoImageView.image = meal.photo;
    cell.ratingControl.rating = meal.rating;
    [cell.ratingControl updateButtonSelectionStates];
    
    return cell;
}


-(IBAction) unwindToMealList:(UIStoryboardSegue *)unwindSegue{
    ViewController *controller = unwindSegue.sourceViewController;
    [meals addObject:controller.meal];
    [self.tableView reloadData];
}





/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/


- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [meals removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        //
    }   
}


/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/



@end
