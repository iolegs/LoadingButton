//
//  ViewController.m
//  LoadingButtonExample
//
//  Created by Oleg Sukhotskiy on 31.03.17.
//  Copyright © 2017 Oleg Sukhotskiy. All rights reserved.
//

#import "ViewController.h"

#import "LoadingButton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)loginButtonAction:(LoadingButton *)button {
    [self.view endEditing:YES];
    
    button.enabled = NO;
    [button startAnimating];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        button.enabled = YES;
        [button stopAnimating];
    });
}

@end
