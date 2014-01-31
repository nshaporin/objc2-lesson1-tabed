//
//  TableViewController.m
//  tabed
//
//  Created by Nikolay Shaporin on 22.01.14.
//  Copyright (c) 2014 nikolay.shaporin. All rights reserved.
//

#import "TableViewController.h"
#import "tabedAppDelegate.h"
#import "filmCell.h"
#import "descriptionViewController.h"


@interface TableViewController ()

@end

@implementation TableViewController
{
    NSDictionary *filmsList;
}

- (NSArray *)films
{
    tabedAppDelegate *appDelegate = (tabedAppDelegate*)[[UIApplication sharedApplication] delegate];
    return appDelegate.films;
}



- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //Table View Background color
    self.view.backgroundColor = [UIColor colorWithRed:245.0/255.0f green:245.0/255.0f blue:245.0/255.0f alpha:1.0f];
    
    //создаем словарь корневого уровня
    NSDictionary *filmbaseDic = (NSDictionary *)[self films];
    //создаем словарь ключей в ключе корня
    NSDictionary *filmDic = (NSDictionary *)[filmbaseDic objectForKey:@"filmbase"];

    filmsList = (NSDictionary*)[filmDic objectForKey:@"films"];
    
    NSLog(@"%@", [filmsList allKeys]);

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    return [filmsList[@"film"] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    filmCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    cell.titleLabel.text = filmsList[@"film"][indexPath.row][@"title"];
    cell.directorLabel.text = filmsList[@"film"][indexPath.row][@"director"];
    cell.ratingLabel.text = filmsList[@"film"][indexPath.row][@"rating"];
    
    NSString *uploadUrl = filmsList[@"film"][indexPath.row][@"img"];
    NSURL *imgUrl = [NSURL URLWithString:uploadUrl];
    NSData *dataImg = [NSData dataWithContentsOfURL:imgUrl];
    UIImage *uploadedImage = [UIImage imageWithData:dataImg];
    cell.filmImage.image = uploadedImage;
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/



- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    descriptionViewController *descVC = (descriptionViewController *) segue.destinationViewController;
    NSIndexPath *path = [self.tableView indexPathForSelectedRow];
    descVC.filmDesc = filmsList[@"film"][path.row];
    
    //NSLog(@"%i", path.row);
}



@end
