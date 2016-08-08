//
//  SecondViewController.m
//  TableViewTraining
//
//  Created by new on 02.08.16.
//  Copyright © 2016 F&G. All rights reserved.
//

#import "SecondViewController.h"
#import "ThreeViewController.h"

@interface SecondViewController ()

@property (weak, nonatomic) IBOutlet UIImageView * imageAnjela;
- (IBAction)buttonTouch:(id)sender;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSString * imageAnjela = [[NSBundle mainBundle] pathForResource:@"Anjela" ofType:@"jpg"];
    self.imageAnjela.image = [UIImage imageWithContentsOfFile:imageAnjela];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonTouch:(id)sender {
    ThreeViewController * threeView = [self.storyboard instantiateViewControllerWithIdentifier:@"threeView"];
    [self.navigationController pushViewController:threeView animated:YES];
}

@end
