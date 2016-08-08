//
//  FortyViewController.m
//  TableViewTraining
//
//  Created by new on 08.08.16.
//  Copyright © 2016 F&G. All rights reserved.
//

#import "FortyViewController.h"
#import "Animations.h"

@interface FortyViewController ()

@property (weak, nonatomic) IBOutlet UIButton *buttonOn;
@property (weak, nonatomic) IBOutlet UIImageView *customImage;
@property (weak, nonatomic) IBOutlet UILabel *labelText;
@property (weak, nonatomic) IBOutlet UIImageView *fortyImage;
@property (weak, nonatomic) IBOutlet UIButton *buttonOff;

@end

@implementation FortyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.buttonOn setBackgroundImage:[UIImage imageNamed:@"button.jpg"] forState:UIControlStateNormal];
    [self.buttonOff setBackgroundImage:[UIImage imageNamed:@"off.jpg"] forState:UIControlStateNormal];
    [self.buttonOn addTarget:self action:@selector(buttonMethod) forControlEvents:UIControlEventTouchUpInside];
    [self.buttonOff addTarget:self action:@selector(returnGrecha) forControlEvents:UIControlEventTouchUpInside];
    self.labelText.text = @"Old-school Music!";
    self.labelText.alpha = 0.0;
}

- (void) buttonMethod {
    
    [Animations animationImage:self.customImage image:[UIImage imageNamed:@"Old-school.jpg"]];
    self.labelText.alpha = 2.0;
    [Animations animationText:self.labelText withText:@"Old-school Music Very Big One"];
    [Animations animationImageTwo:self.fortyImage imageTwo:[UIImage imageNamed:@"grecha.jpg"] alpha:2.0];
    [Animations animateTransformView:self.fortyImage withScale:1.0 move_X:200 move_Y:0 alpha:2 delay:0.4];
}

- (void) returnGrecha {
    
    [Animations animationImage:self.customImage image:[UIImage imageNamed:@"Old-school.jpg"]];
    [Animations animationText:self.labelText withText:@"Old-school Music Very Big One"];
    [Animations animationImageTwo:self.fortyImage imageTwo:[UIImage imageNamed:@"grecha.jpg"] alpha:2.0];
    [Animations animateTransformView:self.fortyImage withScale:1.0 move_X:10 move_Y:0 alpha:2 delay:0.4];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
