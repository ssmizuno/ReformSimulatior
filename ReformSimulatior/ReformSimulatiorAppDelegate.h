//
//  ReformSimulatiorAppDelegate.h
//  ReformSimulatior
//
//  Created by 水野 真史 on 11/07/31.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ReformSimulatiorViewController;

@interface ReformSimulatiorAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet ReformSimulatiorViewController *viewController;

@end
