#import "NavigatorController.h"
#import "garageSaleViewController.h"

@implementation NavigationController

@synthesize navController;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    if (self.tabBarItem.title == @"Home") {
        garageSaleViewController * home = [[[garageSaleViewController alloc] initWithNibName:nil bundle:nil] autorelease];
        [self pushViewController:home animated:YES];
    }
    else if (self.tabBarItem.title == @"Search") {
    }
    else if (self.tabBarItem.title == @"My Garage") {
    }
}

- (void)viewDidUnload
{
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

-(void) dealloc {
    [navController release];
    [super dealloc];
}

@end
