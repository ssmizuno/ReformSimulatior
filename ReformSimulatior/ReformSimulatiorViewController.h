//
//  ReformSimulatiorViewController.h
//  ReformSimulatior
//
//  Created by 水野 真史 on 11/07/31.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ReformSimulatiorViewController : UIViewController {
    
    //----------背景画像----------//
    UIImageView *bgimgView;
    
    //----------ボタン----------//
    UIButton *titleBt;
    
}

@property (nonatomic,retain) UIImageView *bgimgView;
@property (nonatomic,retain) UIButton *titleBt;

@end
