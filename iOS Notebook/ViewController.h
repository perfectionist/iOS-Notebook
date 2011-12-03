//
//  ViewController.h
//  iOS Notebook
//
//  Created by Mattt Thompson on 11/12/03.
//  Copyright (c) 2011年 Gowalla. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, retain) IBOutlet UITableView *tableView;
@property (nonatomic, retain) NSArray *pizzaToppings;

@end
