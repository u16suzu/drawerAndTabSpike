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
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"DRAWER_SEGUE"]) {
        MMDrawerController *destinationViewController = (MMDrawerController *)segue.destinationViewController;
        
        // Instantitate and set the center view controller.
        UIViewController *centerViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"FIRST_TOP_VIEW_CONTROLLER"];
        [destinationViewController setCenterViewController: centerViewController];
        
        // Instantiate and set the left drawer controller.
        UIViewController *leftDrawerViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"SIDE_DRAWER_CONTROLLER"];
        [destinationViewController setLeftDrawerViewController: leftDrawerViewController];
    }
}


@end
