//
//  DataViewController.m
//  TestPageView
//
//  Created by Shi Forrest on 12-3-10.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "DataViewController.h"

@implementation DataViewController

@synthesize dataLabel = _dataLabel;
@synthesize dataObject = _dataObject;

- (void)dealloc
{
    [_dataLabel release];
    [_dataObject release];
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    DLog(@"%s", __PRETTY_FUNCTION__);
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
    DLog(@"%s", __PRETTY_FUNCTION__);

}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.dataLabel.text = [self.dataObject description];
    
    NSDateFormatter *dateFormatter = [[[NSDateFormatter alloc] init] autorelease];
    NSInteger index = [[dateFormatter monthSymbols] indexOfObject:self.dataObject];
    self.view.backgroundColor = [UIColor colorWithWhite:index/12.0 alpha:1.0];
    
    DLog(@"%s", __PRETTY_FUNCTION__);

    
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    DLog(@"%s", __PRETTY_FUNCTION__);

}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
    DLog(@"%s", __PRETTY_FUNCTION__);

}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
    
    DLog(@"%s", __PRETTY_FUNCTION__);

}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    DLog(@"%s", __PRETTY_FUNCTION__);

    return YES;
}

@end
