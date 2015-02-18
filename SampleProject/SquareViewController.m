//
//  ViewController.m
//  SampleProject
//
//  Created by Yale Woo on 17/02/2015.
//  Copyright (c) 2015 Woo Soft. All rights reserved.
//

#import "SquareViewController.h"

@interface SquareViewController ()
@property (weak, nonatomic) IBOutlet UITextField *ValueEntry;
@property (weak, nonatomic) IBOutlet UITextField *ResultEntry;
@property (weak, nonatomic) IBOutlet UISegmentedControl *Selection;
@property (weak, nonatomic) IBOutlet UIButton *CalButton;

@end

@implementation SquareViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)KeyboardDidReturn:(UITextField *)sender {
    [_ValueEntry resignFirstResponder];
    [self do:_CalButton];
}
- (IBAction)BackgroundTouch:(id)sender {
    [_ValueEntry resignFirstResponder];
}
- (IBAction)do:(id)sender {
    [_ValueEntry resignFirstResponder];
    double i;
    if ([_Selection selectedSegmentIndex] == 0){
        i=[[_ValueEntry text] doubleValue];
        i=i*i;
        [_ResultEntry setText:[NSString stringWithFormat:@"%f", i]];
    }
    if ([_Selection selectedSegmentIndex] == 1){
        i=[[_ValueEntry text] doubleValue];
        i=(i*i)/2;
        [_ResultEntry setText:[NSString stringWithFormat:@"%f", i]];
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Memory Warning" message:@"Warning. Memory not enough. "preferredStyle:UIAlertControllerStyleAlert];
    [alert addAction:[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {}]];
    [alert addAction:[UIAlertAction actionWithTitle:@"Quit" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {
        exit(1);
         }]];
    
    [self presentViewController:alert animated:YES completion:nil];
}


@end
