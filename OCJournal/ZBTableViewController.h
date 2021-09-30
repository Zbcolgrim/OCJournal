//
//  ZBTableViewController.h
//  OCJournal
//
//  Created by Zachary Buffington on 9/29/21.
//

#import <UIKit/UIKit.h>
#import "ZBEntryManager.h"
#import "ViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface ZBTableViewController : UITableViewController

@property ZBEntryManager *manager;

@end

NS_ASSUME_NONNULL_END
