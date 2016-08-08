//
//  ThreeViewController.m
//  TableViewTraining
//
//  Created by new on 03.08.16.
//  Copyright © 2016 F&G. All rights reserved.
//

#import "ThreeViewController.h"
#import "Animations.h"
#import "FortyViewController.h"

@interface ThreeViewController () <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;
@property (weak, nonatomic) IBOutlet UIImageView *customImage;

@end

@implementation ThreeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(methodLogs) name:@"NOTIFICATION_SKY" object:nil];

    [self.textField becomeFirstResponder];
    
    self.datePicker.minimumDate = [NSDate date];
    
    UITapGestureRecognizer * tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(backgroundEnd:)];
    [self.view addGestureRecognizer:tap];
    
    [self.datePicker addTarget:self action:@selector(myDatePicker) forControlEvents:UIControlEventValueChanged];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) methodLogs {
    
    NSLog(@"Synthesize!");
}

- (void) myDatePicker {
   
    NSLog(@"%@", self.datePicker.date);
}

- (void) backgroundEnd : (UITapGestureRecognizer *) tap {
    
    [self.textField endEditing:YES];
}

- (BOOL) textFieldShouldReturn:(UITextField *)textField {
    
    if (self.textField.text.length > 1) {
        
        [self.textField resignFirstResponder];
        self.view.backgroundColor = [UIColor colorWithRed: 134.0/255.0 green:37.0/250.0 blue:42.0/230.0 alpha:2.0];
        [[NSNotificationCenter defaultCenter] postNotificationName:@"NOTIFICATION_SKY" object:nil];
        FortyViewController * forty = [self.storyboard instantiateViewControllerWithIdentifier:@"fortyView"];
        [self.navigationController pushViewController:forty animated:YES];
        
    }
    return YES;
}

@end
