//
//  ViewController.m
//  UITableView
//
//  Created by OPSolutions on 04/11/2019.
//  Copyright © 2019 OPSolutions. All rights reserved.
//

#import "ViewController.h"
#import "ContactTableViewCell.h"
#import "ViewDetailsControllerViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITableView *menuTableView;

@end

@implementation ViewController
NSArray *tableData;
NSString *name, *temp;
NSMutableArray *tableNumber;
int num = 20;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.menuTableView registerNib:[UINib nibWithNibName:@"Contact" bundle:nil] forCellReuseIdentifier:@"ContactCell"];
}

- (NSInteger)tableView:(UITableView *)tableView  numberOfRowsInSection:(NSInteger)section {
    return num;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ContactTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ContactCell"];
    if((indexPath.row + 1) % 2 == 0) {
        cell.contact_lbl.text = @"Even";
        temp = cell.contact_lbl.text;
        cell.backgroundColor = [UIColor blueColor];
    }
    else {
        cell.contact_lbl.text = @"Odd";
         temp = cell.contact_lbl.text;
        cell.backgroundColor = [UIColor redColor];
    }
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    ContactTableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    name = cell.contact_lbl.text;
    [self performSegueWithIdentifier:@"displaySegue" sender:nil];
    [_TableViewTest deselectRowAtIndexPath:indexPath animated:true];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if([segue.identifier isEqualToString:@"displaySegue"]) {
        ViewDetailsControllerViewController *vc = [segue destinationViewController];
        vc.contactName = name;
    }
}

@end
