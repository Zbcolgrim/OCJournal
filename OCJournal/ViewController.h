//
//  ViewController.h
//  OCJournal
//
//  Created by Zachary Buffington on 9/29/21.
//

#import <UIKit/UIKit.h>
#import "ZBEntry.h"
#import "ZBEntryManager.h"

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *titleTextField;
@property (weak, nonatomic) IBOutlet UITextField *contextTextField;

@property ZBEntry *entry;
@property ZBEntryManager *manager;

- (IBAction)savveButtonTapped:(id)sender;

@end

