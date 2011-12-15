//
//  ReformSimulatiorViewController.m
//  ReformSimulatior
//
//  Created by 水野 真史 on 11/07/31.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "ReformSimulatiorViewController.h"
#import "SimulatiorMainViewController.h"

@implementation ReformSimulatiorViewController

@synthesize bgimgView;
@synthesize titleBt;



#pragma mark - View lifecycle

///----------ビューが読み込まれたときに呼び出す。----------//
- (void)viewDidLoad
{
    [super viewDidLoad]; 
    
    //----------背景画像----------//
    self.bgimgView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"bg.png"]];
    self.bgimgView.frame = CGRectMake(0, -64, 1024, 768);
    [self.view addSubview:bgimgView];
    
    //----------タイトルボタン----------//
    self.titleBt = [UIButton buttonWithType:UIButtonTypeCustom];
    self.titleBt.frame = CGRectMake(275, 345, 486, 42);
    [self.titleBt setImage:[UIImage imageNamed:@"startBt.png"] forState:UIControlStateNormal];
    self.titleBt.reversesTitleShadowWhenHighlighted = YES;
    self.titleBt.backgroundColor = [UIColor clearColor];
    [self.titleBt addTarget:self action:@selector(gotomain:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:titleBt];
    
    
}


//----------ページ遷移----------//
//topcolumn
-(void)gotomain:(id)sender{	
	SimulatiorMainViewController *next01 = [[[SimulatiorMainViewController alloc] initWithNibName:nil bundle:nil] autorelease];
    next01.hidesBottomBarWhenPushed = YES;
	[self.navigationController pushViewController:next01 animated:YES];
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    
    self.bgimgView = nil;
    self.titleBt = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationLandscapeRight);
}

//----------解放処理----------//
- (void)dealloc
{
    [bgimgView release];
    [titleBt release];
    
    [super dealloc];
    
}

//----------メモリー不足時に呼ばれる----------//
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
}



@end
