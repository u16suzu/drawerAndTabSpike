//
//  SpikeDrawerController.m
//  drawerSpike
//
//  Created by u16suzu on 2015/02/24.
//  Copyright (c) 2015年 IGNIS LTD. All rights reserved.
//

#import "SpikeDrawerController.h"

@interface SpikeDrawerController ()

@end

@implementation SpikeDrawerController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.openDrawerGestureModeMask  = MMOpenDrawerGestureModeAll;    
    self.closeDrawerGestureModeMask = MMCloseDrawerGestureModeAll;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


#pragma mark - Navigation


@end
