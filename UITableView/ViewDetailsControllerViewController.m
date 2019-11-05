//
//  ViewDetailsControllerViewController.m
//  UITableView
//
//  Created by OPSolutions on 04/11/2019.
//  Copyright © 2019 OPSolutions. All rights reserved.
//

#import "ViewDetailsControllerViewController.h"

@interface ViewDetailsControllerViewController ()

@end

@implementation ViewDetailsControllerViewController
- (IBAction)didTapClose:(id)sender {
    [self dismissViewControllerAnimated:true completion:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    _name_lbl.text = _contactName;
    if([_name_lbl.text isEqualToString:@"Even"]) 
        self.view.backgroundColor = [UIColor blueColor];
    else
        self.view.backgroundColor = [UIColor redColor];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
