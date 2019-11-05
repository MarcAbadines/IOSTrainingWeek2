//
//  ViewDetailsControllerViewController.h
//  UITableView
//
//  Created by OPSolutions on 04/11/2019.
//  Copyright © 2019 OPSolutions. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ViewDetailsControllerViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *name_lbl;
@property (assign, nonatomic) NSString *contactName;
@end

NS_ASSUME_NONNULL_END
