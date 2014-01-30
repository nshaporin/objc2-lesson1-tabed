//
//  filmCell.h
//  tabed
//
//  Created by Nikolay Shaporin on 26.01.14.
//  Copyright (c) 2014 nikolay.shaporin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface filmCell : UITableViewCell

@property (nonatomic, strong) IBOutlet UILabel *titleLabel;
@property (strong, nonatomic) IBOutlet UILabel *directorLabel;
@property (strong, nonatomic) IBOutlet UILabel *ratingLabel;
@property (strong, nonatomic) IBOutlet UIImageView *filmImage;

@end
