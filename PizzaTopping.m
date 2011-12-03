//
//  PizzaTopping.m
//  iOS Notebook
//
//  Created by Mattt Thompson on 11/12/03.
//  Copyright (c) 2011年 Gowalla. All rights reserved.
//

#import "PizzaTopping.h"

@implementation PizzaTopping
@synthesize name = _name;

- (void)dealloc {
    [_name release];
    [super dealloc];
}

+ (NSArray *)standardToppings {
    NSMutableArray *mutableToppings = [NSMutableArray array];
    NSArray *toppingNames = [NSArray arrayWithObjects:@"Pepperoni", @"Onion", @"Pineapple", @"Green Pepper", @"Mushroom", @"Sausage", nil];
    for (NSString *toppingName in toppingNames) {
        PizzaTopping *topping = [[[PizzaTopping alloc] init] autorelease];
        topping.name = toppingName;
        [mutableToppings addObject:topping];
    }
    
    return mutableToppings;
}

@end
