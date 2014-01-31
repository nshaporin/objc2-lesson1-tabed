//
//  descriptionViewController.h
//  tabed
//
//  Created by Nikolay Shaporin on 30.01.14.
//  Copyright (c) 2014 nikolay.shaporin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface descriptionViewController : UIViewController
@property (nonatomic, strong) NSDictionary *filmDesc;
@property (strong, nonatomic) IBOutlet UIImageView *filmImage;
@property (strong, nonatomic) IBOutlet UILabel *descLabel;
@property (strong, nonatomic) IBOutlet UITextView *descText;
- (IBAction)readDescAction:(id)sender;

@end
