//
//  descriptionViewController.m
//  tabed
//
//  Created by Nikolay Shaporin on 30.01.14.
//  Copyright (c) 2014 nikolay.shaporin. All rights reserved.
//

#import "descriptionViewController.h"

@interface descriptionViewController ()

@end

@implementation descriptionViewController

//Close Modal Action
//- (IBAction)backToFilms:(id)sender
//{
//    [self dismissViewControllerAnimated:YES completion:nil];
//}


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSLog(@"%@", [_filmDesc allKeys]);

    //NSString *uploadUrl = _filmDesc[@"img"];
    //NSURL *imgUrl = [NSURL URLWithString:uploadUrl];
    //NSData *dataImg = [NSData dataWithContentsOfURL:imgUrl];
    //UIImage *uploadedImage = [UIImage imageWithData:dataImg];
    //_filmImage.image = uploadedImage;
    
    _descText.text = _filmDesc[@"discription"];
    [_descText sizeToFit];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)readDescAction:(id)sender
{
    
}





@end
