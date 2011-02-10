//
//  ChildViewController.m
//  CustomizingNavigationBarBackground
//
//  Created by Ahmet Ardal on 2/10/11.
//  Copyright 2011 LiveGO. All rights reserved.
//

#import "ChildViewController.h"
#import "ModalViewController.h"
#import "UINavigationBar+CustomBackground.h"

@implementation ChildViewController

- (IBAction) doneButtonPressed:(id)sender
{
    ModalViewController *_modalViewController =
        [[ModalViewController alloc] initWithNibName:@"ModalViewController" bundle:nil];
    UINavigationController *navController =
        [[UINavigationController alloc] initWithRootViewController:_modalViewController];
    [navController.navigationBar applyCustomTintColor];
    [self presentModalViewController:navController animated:YES];
    [_modalViewController release];
    [navController release];
}

- (void) viewDidLoad
{
    [super viewDidLoad];
    self.title = @"Child";

    //
    // add a right bar button to navbar
    //
    UIBarButtonItem *buttonItem = [[UIBarButtonItem alloc] initWithTitle:@"Modal"
                                                                   style:UIBarButtonItemStylePlain
                                                                  target:self
                                                                  action:@selector(doneButtonPressed:)];
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
