//
//  ViewController.m
//  TableViewTraining
//
//  Created by new on 21.07.16.
//  Copyright © 2016 F&G. All rights reserved.
//

#import "ViewController.h"
#import "ObjectClass.h"
#import "CustomCell.h"
#import "SecondViewController.h"
#import "AppDelegate.h"
#import "ThreeViewController.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>

- (IBAction)buttonItem:(id)sender;
@property (nonatomic, strong) NSArray * arrayData;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
- (IBAction)buttonPicker:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    ObjectClass * object = [[ObjectClass alloc] initWithIf];
    [object makeObject];
    
//    NSArray * arrayObject = [[NSArray alloc] initWithObjects:object, nil];
//    NSDictionary * dictObject = [[NSDictionary alloc] initWithObjectsAndKeys:
//                                 [arrayObject objectAtIndex:0], @"Object", nil];
//    NSMutableArray * arrayMute = [[NSMutableArray alloc] init];
//    [arrayMute addObject:dictObject];
//    NSLog(@"array %i", arrayMute.count);
//    NSLog(@"Hier %@", arrayMute);

    
# pragma mark  -  TableView Realisation
    
    NSMutableArray * arrayM = [[NSMutableArray alloc] init];
    
    NSArray * arrayDate = [[NSArray alloc] initWithObjects:@"Anjela", @"Marina", @"Alla",nil];
    
    for (int i = 0; i < arrayDate.count; i++) {
        
        NSDictionary * dict = [[NSDictionary alloc] initWithObjectsAndKeys:
                               [arrayDate objectAtIndex:i], @"Names", nil];
        
        [arrayM addObject:dict];
    }
    
    self.arrayData = [[NSArray alloc] initWithArray:arrayM];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) reloadTableView {
    
    [self.tableView reloadSections:[NSIndexSet indexSetWithIndex:0] withRowAnimation:UITableViewRowAnimationBottom];
}

#pragma mark  -  UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return self.arrayData.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString * identifier = @"Cell";
    
    NSDictionary * dict = [self.arrayData objectAtIndex:indexPath.row];
    
    CustomCell * cell = (CustomCell *) [tableView dequeueReusableCellWithIdentifier:identifier forIndexPath:indexPath];
    
    NSString * filePath = [[NSBundle mainBundle] pathForResource:[dict objectForKey:@"Names"] ofType:@"jpg"];
    
//    NSString * imageName = [NSString stringWithFormat:@"%@ .jpg", [dict objectForKey:@"Names"]];
    
    cell.imageCell.image = [UIImage imageWithContentsOfFile:filePath];

    cell.labelNames.text = [dict objectForKey:@"Names"];
    
    return cell;
}

#pragma mark  -  UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if (indexPath.row == 0) {
        SecondViewController * second = [self.storyboard instantiateViewControllerWithIdentifier:@"secondView"];
        [self.navigationController pushViewController:second animated:YES];
    }
    
    [self.tableView deselectRowAtIndexPath:indexPath animated:YES];
}

- (IBAction)buttonItem:(id)sender {
    
    SecondViewController * second = [self.storyboard instantiateViewControllerWithIdentifier:@"secondView"];
    [self.navigationController pushViewController:second animated:YES];
}

- (IBAction)buttonPicker:(id)sender {
    
    ThreeViewController * threeView = [self.storyboard instantiateViewControllerWithIdentifier:@"threeView"];
    [self.navigationController pushViewController:threeView animated:YES];
}

@end
