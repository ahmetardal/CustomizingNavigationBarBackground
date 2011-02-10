//
//  ModalViewController.m
//  CustomizingNavigationBarBackground
//
//  Created by Ahmet Ardal on 2/11/11.
//  Copyright 2011 LiveGO. All rights reserved.
//

#import "ModalViewController.h"

@implementation ModalViewController

- (IBAction) closeButtonPressed:(id)sender
{
    [self dismissModalViewControllerAnimated:YES];
}

- (void) viewDidLoad
{
    [super viewDidLoad];
    self.title = @"Modal";
    
    //
    // add a right bar button to navbar
    //
    UIBarButtonItem *buttonItem = [[UIBarButtonItem alloc] initWithTitle:@"Close"
                                                                   style:UIBarButtonItemStylePlain
                                                                  target:self
                                                                  action:@selector(closeButtonPressed:)];
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
