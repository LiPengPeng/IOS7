//
//  AControllerViewController.m
//  IOS7
//
//  Created by MAC on 14-3-4.
//  Copyright (c) 2014年 MIchael.li. All rights reserved.
//

#import "AControllerViewController.h"
#import "BViewController.h"

@interface AControllerViewController ()

@end

@implementation AControllerViewController

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

    self.navigationItem.title = @"BBBBB";
    self.view.backgroundColor = [UIColor redColor];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button setTitle:@"BBBB" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(button) forControlEvents:UIControlEventTouchUpInside];
    
    button.frame = CGRectMake(50, 50, 200, 100);
    self.view.backgroundColor = [UIColor blueColor];
    [self.view addSubview:button];

	// Do any additional setup after loading the view.
}

- (void) button
{
    BViewController *controller = [[BViewController alloc]init];
    //    self.navigationController.interactivePopGestureRecognizer.enabled = YES;
    [self.navigationController pushViewController:controller animated:YES];
    //    se
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
