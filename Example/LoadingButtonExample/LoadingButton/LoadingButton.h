//
//  LoadingButton.h
//
//  Created by Oleg Sukhotskiy on 30.03.17.
//  Copyright © 2017 Oleg Sukhotskiy. All rights reserved.
//

#import <UIKit/UIKit.h>


/**
 @author Oleg Sukhotskiy
 
 Button with activity indicator
 The indicator is located to the left of the title label
 */
@interface LoadingButton : UIButton


/**
 @author Oleg Sukhotskiy
 
 Starts the animation of the progress indicator.
 When the progress indicator is animated, the gear spins to indicate indeterminate progress. The indicator is animated until stopAnimating is called.
 */
- (void)startAnimating;


/**
 @author Oleg Sukhotskiy
 
 Stops the animation of the progress indicator.
 Call this method to stop the animation of the progress indicator started with a call to startAnimating. When animating is stopped, the indicator is hidden.
 */
- (void)stopAnimating;


@end
