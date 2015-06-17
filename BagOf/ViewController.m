//
//  ViewController.m
//  BagOf
//
//  Created by Richard Adem on 17/06/2015.
//  Copyright (c) 2015 Richard Adem. All rights reserved.
//

#import "ViewController.h"
#import "BagOf.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    for (NSInteger i = 0; i < 10; ++i) {
    
        NSArray *selectedNumbers = [BagOf bagOfSize:7 getNumbersOfCount:7];
        for (NSNumber *selectedNumber in selectedNumbers) {
            NSLog(@"number: %zd", [selectedNumber integerValue]);
        }
        NSLog(@"---------");
    }
    
    for (NSInteger i = 0; i < 10; ++i) {
        
        NSArray *selectedNumbers = [BagOf bagOfSize:7 getNumbersOfCount:14 withBagCount:2];
        for (NSNumber *selectedNumber in selectedNumbers) {
            NSLog(@"number: %zd", [selectedNumber integerValue]);
        }
        NSLog(@"---------");
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
