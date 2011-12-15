//
//  SimulatiorMainViewController.m
//  ReformSimulatior
//
//  Created by 水野 真史 on 11/07/31.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "SimulatiorMainViewController.h"


@implementation SimulatiorMainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


#pragma mark - View lifecycle


// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    UIImage *baseimg = [UIImage imageNamed:@"base.png"];
    UIImageView *baseimgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, -64, 1024, 768)];
    baseimgView.image = baseimg;
    [self.view addSubview:baseimgView];
    [baseimgView release];

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
	return (interfaceOrientation == UIInterfaceOrientationLandscapeRight);
}

- (void)dealloc
{
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

@end
