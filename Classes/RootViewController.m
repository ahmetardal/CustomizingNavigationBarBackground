//
//  RootViewController.m
//  CustomizingNavigationBarBackground
//
//  Created by Ahmet Ardal on 2/10/11.
//  Copyright 2011 LiveGO. All rights reserved.
//

#import "RootViewController.h"
#import "ChildViewController.h"

@implementation RootViewController

- (IBAction) nextButtonPressed:(id)sender
{
    ChildViewController *childViewController =
        [[ChildViewController alloc] initWithNibName:@"ChildViewController" bundle:nil];
    [self.navigationController pushViewController:childViewController animated:YES];
    [childViewController release];
}

- (void) viewDidLoad
{
    [super viewDidLoad];
    self.title = @"Root";

    //
    // add a right bar button to navbar
    //
    UIBarButtonItem *buttonItem = [[UIBarButtonItem alloc] initWithTitle:@"Next"
                                                                   style:UIBarButtonItemStylePlain
                                                                  target:self
                                                                  action:@selector(nextButtonPressed:)];
    [self.navigationItem setRightBarButtonItem:buttonItem];
    [buttonItem release];
}

- (BOOL) shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return YES;
}

- (void) didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (void) viewDidUnload
{
    [super viewDidUnload];
}

- (void) dealloc
{
    [super dealloc];
}

@end
