//
//  PizzaTopping.h
//  iOS Notebook
//
//  Created by Mattt Thompson on 11/12/03.
//  Copyright (c) 2011年 Gowalla. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PizzaTopping : NSObject

@property (nonatomic, copy) NSString *name;

+ (NSArray *)standardToppings;

@end
