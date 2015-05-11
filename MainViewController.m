//
//  MainViewController.m
//  MultipleStyleChangeView
//
//  Created by  on 13-9-16.
//  Copyright (c) 2013年 __MyCompanyName__. All rights reserved.
//

#import "MainViewController.h"
#import "ViewController.h"

@implementation MainViewController
@synthesize myButton;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        
    }
    return self;
}

/**
 *  by wu
 */
- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle


-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.tintColor = [UIColor colorWithRed:255.0/255.0 green:20.0/255.0 blue:20.0/255.0 alpha:1];
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    UINavigationItem *tempNavgationItem = [self navigationItem];
    [tempNavgationItem setTitle:@"主界面"];
    
    myButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.myButton.frame = CGRectMake(50, 200, 220, 37);
    [self.myButton setTitle:@"多种视图的不同切换效果" forState:UIControlStateNormal];
    [self.myButton addTarget:self action:@selector(myButtonIsPressed:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:self.myButton];
}

-(void)myButtonIsPressed:(UIButton *)paramSender
{   
    ViewController *tempViewController = [[ViewController alloc]init];
    [[self navigationController]pushViewController:tempViewController animated:YES];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
