//
//  AGQuestionViewController.m
//  spritybird
//
//  Created by Tai Truong on 3/22/14.
//  Copyright (c) 2014 Alexis Creuzot. All rights reserved.
//

#import "AGQuestionViewController.h"
#import "AGQuestionTableCell.h"
#import "ViewController.h"

@interface AGQuestionViewController () <UITableViewDataSource, UITableViewDelegate>
@property (strong, nonatomic) NSMutableArray *datasource;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation AGQuestionViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.datasource = [NSMutableArray array];
    // add list question
    // 1
    AGQuestionTableItem *item = [[AGQuestionTableItem alloc] initWithTitle:@"1 week"];
    [self.datasource addObject:item];
    // 2
    item = [[AGQuestionTableItem alloc] initWithTitle:@"1 month"];
    [self.datasource addObject:item];
    // 3
    item = [[AGQuestionTableItem alloc] initWithTitle:@"1 year"];
    [self.datasource addObject:item];
    // 4
    item = [[AGQuestionTableItem alloc] initWithTitle:@"never"];
    [self.datasource addObject:item];
    
    // reload table
    [self.tableView reloadData];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableViewDelegate
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.datasource.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *cellID = [[AGQuestionTableCell class] description];
    AGQuestionTableCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if (!cell) {
        cell = [[AGQuestionTableCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
    }
    
    [cell setObject:[self.datasource objectAtIndex:indexPath.row]];
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
//    [[NSUserDefaults standardUserDefaults] setBool:YES forKey:SHOW_QUESTION_FIST_TIME];
    
    UIViewController *viewController = [[UIStoryboard storyboardWithName:MAIN_STORYBOARD bundle:nil] instantiateViewControllerWithIdentifier:[[ViewController class] description]];
    [self.navigationController pushViewController:viewController animated:YES];
}
@end
