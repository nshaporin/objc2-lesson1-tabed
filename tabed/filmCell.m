//
//  filmCell.m
//  tabed
//
//  Created by Nikolay Shaporin on 26.01.14.
//  Copyright (c) 2014 nikolay.shaporin. All rights reserved.
//

#import "filmCell.h"

@implementation filmCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
