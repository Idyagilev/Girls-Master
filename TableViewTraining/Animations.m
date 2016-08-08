//
//  Animations.m
//  TableViewTraining
//
//  Created by new on 08.08.16.
//  Copyright © 2016 F&G. All rights reserved.
//

#import "Animations.h"

@implementation Animations

+ (void) animationImage: (UIImageView *)imageView image: (UIImage *)image {
    
    [UIView transitionWithView:imageView duration:1.2 options:UIViewAnimationOptionTransitionFlipFromTop animations:^{
        imageView.image = image;
    } completion:NULL];
}

+ (void) animationText: (UILabel *)label  withText: (NSString *) string {
    
    CATransition * transition = [CATransition animation];
    transition.type = kCATransitionReveal;
    transition.subtype = kCATransitionFromLeft;
    transition.duration = 0.9;
    [transition setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut]];
    [label.layer addAnimation:transition forKey:nil];
    label.text = string;
}

+ (void) animationImageTwo: (UIImageView *)imageView  imageTwo: (UIImage *)image  alpha: (CGFloat ) alpha {
    
    [UIView transitionWithView:imageView duration:1.5 options:UIViewAnimationOptionTransitionCrossDissolve animations:^{
        imageView.image = image;
        imageView.alpha = alpha;
    } completion:NULL];
}

+ (void) animateTransformView: (UIView *) view withScale: (CGFloat) scale move_X: (CGFloat) moveX move_Y: (CGFloat) moveY alpha: (CGFloat) alpha delay: (CGFloat) delay{
    
    [UIView animateWithDuration:2.6 delay:delay usingSpringWithDamping:0.9 initialSpringVelocity:1.3 options:0 animations:^{
        
        
        CGFloat transformX = 0;
        CGFloat transformY = 0;
        CGFloat transformScale = 0;
        
        transformX = moveX;
        transformY = moveY;
        transformScale = scale;
        
        CGAffineTransform scaleT = CGAffineTransformMakeScale(scale, scale);
        
        CGAffineTransform trans = CGAffineTransformMakeTranslation(transformX, transformY);
        
        CGAffineTransform resultTransform = CGAffineTransformConcat(trans, scaleT);
        
        view.transform = resultTransform;
        
        view.alpha = alpha;
        
        
    } completion:^(BOOL finished) {
        
    }];
}


@end
