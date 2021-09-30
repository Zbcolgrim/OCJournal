//
//  ZBTableViewController.m
//  OCJournal
//
//  Created by Zachary Buffington on 9/29/21.
//

#import "ZBTableViewController.h"

@interface ZBTableViewController ()

@end

@implementation ZBTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.manager = [[ZBEntryManager alloc] init];
    
}
- (void)viewWillAppear:(BOOL)animated {
[super viewWillAppear:animated];
[self.tableView reloadData];
}

#pragma mark - Table view data source



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return self.manager.entries.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"entryCell" forIndexPath:indexPath];
    
    ZBEntry *entry = self.manager.entries[indexPath.row];
    
    cell.textLabel.text = entry.title;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%@", entry.timestamp];
    
    
    return cell;
}





// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        ZBEntry *entry = self.manager.entries[indexPath.row];
        
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    
    }   
}







#pragma mark - Navigation


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    ViewController *destination = segue.destinationViewController;
    destination.manager = self.manager;
    if ([segue.identifier isEqualToString:@"updateEntry"]) {
        NSIndexPath *indexPath = self.tableView.indexPathForSelectedRow;
        
        
        ZBEntry *entry = self.manager.entries[indexPath.row];
        
        destination.entry = entry;
        
        
        
        
    }
    
}


@end
