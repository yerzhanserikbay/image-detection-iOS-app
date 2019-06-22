//
//  ViewController.m
//  image-detection
//
//  Created by YS on 6/21/19.
//  Copyright © 2019 YS. All rights reserved.
//

#import "ViewController.h"
#import <Vision/Vision.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor blackColor];
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Hello" message:@"Welcome to Open CV" delegate:self cancelButtonTitle:@"Continue" otherButtonTitles:nil];
    
    [alert show];
}


@end
