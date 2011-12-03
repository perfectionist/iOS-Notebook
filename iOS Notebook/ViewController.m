//
//  ViewController.m
//  iOS Notebook
//
//  Created by Mattt Thompson on 11/12/03.
//  Copyright (c) 2011年 Gowalla. All rights reserved.
//

#import "ViewController.h"

#import "PizzaTopping.h"

@implementation ViewController
@synthesize tableView = _tableView;
@synthesize pizzaToppings = _pizzaToppings;

- (void)dealloc {
    [_tableView release];
    [_pizzaToppings release];
    [super dealloc];
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    
    NSSortDescriptor *sortDescriptor = [NSSortDescriptor sortDescriptorWithKey:@"name" ascending:YES selector:@selector(localizedStandardCompare:)];
    
    self.pizzaToppings = [[PizzaTopping standardToppings] sortedArrayUsingDescriptors:[NSArray arrayWithObject:sortDescriptor]];
    [self.tableView reloadData];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

#pragma mark - UITableViewDelegate

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.pizzaToppings count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil] autorelease];
    
    PizzaTopping *topping = [self.pizzaToppings objectAtIndex:indexPath.row];
    
    cell.textLabel.text = topping.name;
    
    return cell;
}

@end
