//
//  Animations.h
//  TableViewTraining
//
//  Created by new on 08.08.16.
//  Copyright © 2016 F&G. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Animations : NSObject

+ (void) animationImage: (UIImageView *)imageView image: (UIImage *)image ;

+ (void) animationText: (UILabel *)label  withText: (NSString *) string ;

+ (void) animationImageTwo: (UIImageView *)imageView  imageTwo: (UIImage *)image  alpha: (CGFloat ) alpha ;

+ (void) animateTransformView: (UIView *) view withScale: (CGFloat) scale move_X: (CGFloat) moveX move_Y: (CGFloat) moveY alpha: (CGFloat) alpha delay: (CGFloat) delay ;


@end
