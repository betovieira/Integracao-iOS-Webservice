//
//  ViewController.m
//  integracao-ios-objective-c
//
//  Created by Humberto Vieira de Castro on 4/4/15.
//  Copyright (c) 2015 Humberto Vieira de Castro. All rights reserved.
//

#import "ViewController.h"
#import "Usuario.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UIButton *btnInserir;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)click_btnInserir:(id)sender {
    Usuario *u = [[Usuario alloc] init];
    u.user = @"beto";
    u.senha = @"123";
    u.apelido = @"betinhu";
    u.email= @"betovieira@hotmail.com";
    
    [u insereUsuario:u];
    NSLog(@"Clicou");
}

@end
