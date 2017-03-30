//
//  LoadingButton.m
//
//  Created by Oleg Sukhotskiy on 30.03.17.
//  Copyright © 2017 Oleg Sukhotskiy. All rights reserved.
//

#import "LoadingButton.h"

@interface LoadingButton ()

@property (nonatomic, strong) UIActivityIndicatorView *activityIndicator;

@end

@implementation LoadingButton

- (void)awakeFromNib {
    [super awakeFromNib];
    
    self.activityIndicator = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhite];
    [self addSubview:self.activityIndicator];
}

- (void)drawRect:(CGRect)rect {
    // Drawing code
    self.activityIndicator.center = CGPointMake(self.titleLabel.frame.origin.x - self.activityIndicator.bounds.size.width,
                                                self.frame.size.height / 2);
}

- (void)startAnimating {
    [self.activityIndicator startAnimating];
}

- (void)stopAnimating {
    [self.activityIndicator stopAnimating];
}

@end
