//
//  ViewController.m
//  GatewayDemo
//
//  Created by LS on 05/05/2017.
//  Copyright © 2017 LS. All rights reserved.
//

#import "ViewController.h"
#import "UIDevice+IPAddress.h"


@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *localIpLabel;
@property (weak, nonatomic) IBOutlet UILabel *gatewayIpLabel;
@property (weak, nonatomic) IBOutlet UILabel *dnsIpLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSString *localIp = [[UIDevice currentDevice] localIPAddress];
    
    self.localIpLabel.text = [NSString stringWithFormat:@"Local IP: %@", localIp];
    
    NSString *gateway = [[UIDevice currentDevice] gatewayIPAddress];
    
    self.gatewayIpLabel.text = [NSString stringWithFormat:@"Gateway IP: %@", gateway];
    
    
    NSString *localDnsIP = [[UIDevice currentDevice] localDnsServerIpAddress];
    self.dnsIpLabel.text = [NSString stringWithFormat:@"Dns IP: %@", localDnsIP];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
