//
//  ViewController.m
//  OCJournal
//
//  Created by Zachary Buffington on 9/29/21.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.titleTextField.text = self.entry.title;
    self.contextTextField.text = self.entry.contents;
}



- (IBAction)savveButtonTapped:(id)sender {
    
    if (self.entry) {
        [self.manager updateEntry:self.entry title:self.titleTextField.text contents:self.contextTextField.text];
        
        
    
    } else {
        [self.manager createEntryWithTitle:self.titleTextField.text contents:self.contextTextField.text];
    }
    [self.navigationController popToRootViewControllerAnimated:YES];
}
@end
